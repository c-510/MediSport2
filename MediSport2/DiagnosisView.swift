//
//  DiagnosisView.swift
//  MediSport2
//
//  Created by Javier Yeow on 30/6/24.
//

import Foundation
import SwiftUI

struct DiagnosisView: View {
    var bodyPart: String
    var symptoms: [String]
    
    @State private var diagnosis: String?
    
    var body: some View {
        VStack {
            if let diagnosis = diagnosis {
                Text(diagnosis)
                    .padding()
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
        diagnosis = diagnoses.first { $0.bodyPart == bodyPart && Set($0.symptoms).isSubset(of: Set(symptoms)) }?.diagnosis
    }
}

struct DiagnosisView_Previews: PreviewProvider {
    static var previews: some View {
        DiagnosisView(bodyPart: "Shoulder", symptoms: ["Pain"])
    }
}
