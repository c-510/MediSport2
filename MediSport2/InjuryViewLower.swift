//
//  InjuryViewLower.swift
//  MediSport2
//
//  Created by Claire Chan on 2/6/24.
//

import SwiftUI

struct InjuryViewLower: View {
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
                    
                    // Buttock
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.5, y: imageHeight * 0.55))
                        path.addLine(to: CGPoint(x: imageWidth * 0.8, y: imageHeight * 0.6))
                    }
                    .stroke(Color.blue, lineWidth: 2)
                    
                    Text("Buttock")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.8, y: imageHeight * 0.6)
                    
                    // Hamstring
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.5, y: imageHeight * 0.65))
                        path.addLine(to: CGPoint(x: imageWidth * 0.75, y: imageHeight * 0.7))
                    }
                    .stroke(Color.red, lineWidth: 2)
                    
                    Text("Hamstring")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.75, y: imageHeight * 0.7)
                    
                    // Quads
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.5, y: imageHeight * 0.45))
                        path.addLine(to: CGPoint(x: imageWidth * 0.75, y: imageHeight * 0.5))
                    }
                    .stroke(Color.purple, lineWidth: 2)
                    
                    Text("Quads")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.75, y: imageHeight * 0.5)
                    
                    // Inner Thigh
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.45, y: imageHeight * 0.55))
                        path.addLine(to: CGPoint(x: imageWidth * 0.25, y: imageHeight * 0.6))
                    }
                    .stroke(Color.orange, lineWidth: 2)
                    
                    Text("Inner Thigh")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.25, y: imageHeight * 0.6)
                    
                    // Knees
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.5, y: imageHeight * 0.75))
                        path.addLine(to: CGPoint(x: imageWidth * 0.75, y: imageHeight * 0.8))
                    }
                    .stroke(Color.green, lineWidth: 2)
                    
                    Text("Knees")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.75, y: imageHeight * 0.8)
                    
                    // Calf
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.5, y: imageHeight * 0.85))
                        path.addLine(to: CGPoint(x: imageWidth * 0.25, y: imageHeight * 0.9))
                    }
                    .stroke(Color.yellow, lineWidth: 2)
                    
                    Text("Calf")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.25, y: imageHeight * 0.9)
                    
                    // Ankle
                    Path { path in
                        path.move(to: CGPoint(x: imageWidth * 0.5, y: imageHeight * 0.95))
                        path.addLine(to: CGPoint(x: imageWidth * 0.75, y: imageHeight * 1.0))
                    }
                    .stroke(Color.gray, lineWidth: 2)
                    
                    Text("Ankle")
                        .font(.caption)
                        .foregroundColor(.black)
                        .position(x: imageWidth * 0.75, y: imageHeight * 1.0)
                }
                .frame(width: 300, height: 400)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .navigationTitle("Lower Body Injury")
    }
}

#Preview {
    InjuryViewLower(bodyPart: "Lower")
}
