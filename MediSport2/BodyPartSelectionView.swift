//
//  BodyPartSelectionView.swift
//  MediSport2
//
//  Created by Javier Yeow on 30/6/24.
//

import Foundation
import SwiftUI

struct BodyPartSelectionView: View {
    var bodyPart: String
    
    var body: some View {
        VStack {
            Text("Select the body part")
                .font(.largeTitle)
                .padding()
            List {
                if bodyPart == "Upper" {
                    NavigationLink(destination: SymptomSelectionView(bodyPart: "Shoulder")) {
                        Text("Shoulder")
                    }
                    NavigationLink(destination: SymptomSelectionView(bodyPart: "Elbow")) {
                        Text("Elbow")
                    }
                    NavigationLink(destination: SymptomSelectionView(bodyPart: "Head")) {
                        Text("Head")
                    }
                    NavigationLink(destination: SymptomSelectionView(bodyPart: "Wrist")) {
                        Text("Wrist")
                    }
                    NavigationLink(destination: SymptomSelectionView(bodyPart: "Finger")) {
                        Text("Finger")
                    }
                    // Add more upper body parts as needed
                } else {
                    NavigationLink(destination: SymptomSelectionView(bodyPart: "Knee")) {
                        Text("Knee")
                    }
                    NavigationLink(destination: SymptomSelectionView(bodyPart: "Ankle")) {
                        Text("Ankle")
                    }
                    NavigationLink(destination: SymptomSelectionView(bodyPart: "Thigh")) {
                        Text("Thigh")
                    }
                    NavigationLink(destination: SymptomSelectionView(bodyPart: "Calf")) {
                        Text("Calf")
                    }
                    // Add more lower body parts as needed
                }
            }
        }
    }
}

struct BodyPartSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        BodyPartSelectionView(bodyPart: "Upper")
    }
}
