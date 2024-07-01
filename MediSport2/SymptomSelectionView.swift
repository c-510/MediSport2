//
//  SymptomSelectionView.swift
//  MediSport2
//
//  Created by Javier Yeow on 30/6/24.
//

import Foundation
import SwiftUI

struct SymptomSelectionView: View {
    var bodyPart: String
    @State private var selectedSymptoms: [String] = []
    
    var body: some View {
        VStack {
            Text("Select the symptoms for \(bodyPart)")
                .font(.largeTitle)
                .padding()
            List {
                SymptomRow(symptom: "Pain", isSelected: selectedSymptoms.contains("Pain")) {
                    toggleSymptom("Pain")
                }
                SymptomRow(symptom: "Swelling", isSelected: selectedSymptoms.contains("Swelling")) {
                    toggleSymptom("Swelling")
                }
                SymptomRow(symptom: "Bruising", isSelected: selectedSymptoms.contains("Bruising")) {
                    toggleSymptom("Bruising")
                }
                SymptomRow(symptom: "Visibly out of place or misshapen limb", isSelected: selectedSymptoms.contains("Visibly out of place or misshapen limb")) {
                    toggleSymptom("Visibly out of place or misshapen limb")
                }
                SymptomRow(symptom: "Bleeding", isSelected: selectedSymptoms.contains("Bleeding")) {
                    toggleSymptom("Bleeding")
                }
                SymptomRow(symptom: "Numbness/tingling", isSelected: selectedSymptoms.contains("Numbness/tingling")) {
                    toggleSymptom("Numbness/tingling")
                }
                SymptomRow(symptom: "Loss of motion", isSelected: selectedSymptoms.contains("Loss of motion")) {
                    toggleSymptom("Loss of motion")
                }
                SymptomRow(symptom: "Muscle spasms", isSelected: selectedSymptoms.contains("Muscle spasms")) {
                    toggleSymptom("Muscle spasms")
                }
                SymptomRow(symptom: "Confusion/dizziness", isSelected: selectedSymptoms.contains("Confusion/dizziness")) {
                    toggleSymptom("Confusion/dizziness")
                }
                SymptomRow(symptom: "Direct trauma to head", isSelected: selectedSymptoms.contains("Direct trauma to head")) {
                    toggleSymptom("Direct trauma to head")
                }
                // Add more symptoms as needed
            }
            if !selectedSymptoms.isEmpty {
                NavigationLink(destination: DiagnosisView(bodyPart: bodyPart, symptoms: selectedSymptoms)) {
                    Text("Get Diagnosis!")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 20)
            }
        }
    }
    
    private func toggleSymptom(_ symptom: String) {
        if selectedSymptoms.contains(symptom) {
            selectedSymptoms.removeAll { $0 == symptom }
        } else {
            selectedSymptoms.append(symptom)
        }
    }
}

struct SymptomRow: View {
    var symptom: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        HStack {
            Text(symptom)
            Spacer()
            if isSelected {
                Image(systemName: "checkmark")
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            action()
        }
    }
}

struct SymptomSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomSelectionView(bodyPart: "Shoulder")
    }
}
