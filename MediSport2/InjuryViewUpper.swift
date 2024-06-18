//
//  InjuryView.swift
//  MediSport
//
//  Created by Claire Chan on 29/5/24.
//


import SwiftUI

struct InjuryViewUpper: View {
    var bodyPart: String
    @State private var symptoms: String = ""
    
    var body: some View {
        VStack {
            Text("Heard you got a sports injury?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.top, 20)
            
            Spacer()
            
            ZStack {
                Image("Human_Anatomy")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 400)
                    .padding(.bottom, 20)
                
                GeometryReader { geometry in
                    let imageWidth = geometry.size.width
                    let imageHeight = geometry.size.height

                    // Shoulder
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.35, y: imageHeight * 0.25))
                        path.addLine(to: CGPoint(x: imageWidth * 0.1, y: imageHeight * 0.15))
                    }
                    .stroke(Color.blue, lineWidth: 2)
                    
                    Text("Shoulder")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.1, y: imageHeight * 0.15)
                    
                    // Upper Back
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.5, y: imageHeight * 0.2))
                        path.addLine(to: CGPoint(x: imageWidth * 0.75, y: imageHeight * 0.1))
                    }
                    .stroke(Color.red, lineWidth: 2)
                    
                    Text("Upper Back")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.75, y: imageHeight * 0.1)
                    
                    // Lower Back
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.5, y: imageHeight * 0.5))
                        path.addLine(to: CGPoint(x: imageWidth * 0.8, y: imageHeight * 0.45))
                    }
                    .stroke(Color.green, lineWidth: 2)
                    
                    Text("Lower Back")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.8, y: imageHeight * 0.45)
                    
                    // Neck
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.5, y: imageHeight * 0.7))
                        path.addLine(to: CGPoint(x: imageWidth * 0.85, y: imageHeight * 0.65))
                    }
                    .stroke(Color.orange, lineWidth: 2)
                    
                    Text("Neck")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.85, y: imageHeight * 0.65)
                    
                    // Chest
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.5, y: imageHeight * 0.3))
                        path.addLine(to: CGPoint(x: imageWidth * 0.8, y: imageHeight * 0.25))
                    }
                    .stroke(Color.purple, lineWidth: 2)
                    
                    Text("Chest")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.8, y: imageHeight * 0.25)
                    
                    // Tricep
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.6, y: imageHeight * 0.4))
                        path.addLine(to: CGPoint(x: imageWidth * 0.9, y: imageHeight * 0.35))
                    }
                    .stroke(Color.yellow, lineWidth: 2)
                    
                    Text("Tricep")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.9, y: imageHeight * 0.35)
                    
                    // Bicep
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.4, y: imageHeight * 0.4))
                        path.addLine(to: CGPoint(x: imageWidth * 0.1, y: imageHeight * 0.35))
                    }
                    .stroke(Color.pink, lineWidth: 2)
                    
                    Text("Bicep")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.1, y: imageHeight * 0.35)
                    
                    // Forearm
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.4, y: imageHeight * 0.55))
                        path.addLine(to: CGPoint(x: imageWidth * 0.1, y: imageHeight * 0.5))
                    }
                    .stroke(Color.brown, lineWidth: 2)
                    
                    Text("Forearm")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.1, y: imageHeight * 0.5)
                    
                    // Wrist
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.5, y: imageHeight * 0.85))
                        path.addLine(to: CGPoint(x: imageWidth * 0.8, y: imageHeight * 0.8))
                    }
                    .stroke(Color.gray, lineWidth: 2)
                    
                    Text("Wrist")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.8, y: imageHeight * 0.8)
                }
                .frame(width: 300, height: 400)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .navigationTitle("Upper Body Injury")
    }
}

#Preview {
    InjuryViewUpper(bodyPart: "Upper")
}
