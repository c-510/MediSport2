import SwiftUI

struct DiagnosisView: View {
    var bodyPart: String
    var symptoms: [String]
    
    @State private var diagnosis: String?
    @State private var details: String?

    var body: some View {
        VStack {
            if let diagnosis = diagnosis {
                Text(diagnosis)
                    .padding()
                NavigationLink(destination: LearnMoreView(diagnosisDetail: details ?? "No additional details available")) {
                    Text("Learn More About Your Diagnosis")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 20)
            } else {
                Text("Loading...")
                    .onAppear {
                        getDiagnosis()
                    }
            }
        }
        .navigationTitle("Diagnosis for \(bodyPart)")
        .padding()
    }
    
    private func getDiagnosis() {
        let dataLoader = DataLoader()
        let diagnoses = dataLoader.loadDiagnosis()
        
        for diag in diagnoses {
            let requiredSymptoms = diag.symptoms.filter { $0.value == "Y" }.keys
            let optionalSymptoms = diag.symptoms.filter { $0.value == "N" }.keys

            let requiredPresent = Set(requiredSymptoms).isSubset(of: Set(symptoms))

            // Debugging statements
            print("Checking diagnosis: \(diag.diagnosis)")
            print("Required symptoms: \(requiredSymptoms)")
            print("Optional symptoms: \(optionalSymptoms)")
            print("Selected symptoms: \(symptoms)")
            print("Required present: \(requiredPresent)")

            if requiredPresent {
                diagnosis = diag.diagnosis.replacingOccurrences(of: "{bodyPart}", with: bodyPart)
                details = diag.details.replacingOccurrences(of: "{bodyPart}", with: bodyPart)
                return
            }
        }
        diagnosis = "No diagnosis found"
        details = "Please consult a healthcare provider for further evaluation."
    }
}

struct LearnMoreView: View {
    var diagnosisDetail: String

    var body: some View {
        VStack {
            Text("More Information")
                .font(.largeTitle)
                .padding()

            Text(diagnosisDetail)
                .font(.body)
                .padding()
            
            Spacer()
        }
        .navigationBarTitle("Learn More", displayMode: .inline)
    }
}

struct DiagnosisView_Previews: PreviewProvider {
    static var previews: some View {
        DiagnosisView(bodyPart: "Head", symptoms: ["Confusion/dizziness", "Headache", "Direct trauma to head"])
    }
}
