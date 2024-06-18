//
//  InjuryView.swift
//  MediSport
//
//  Created by Claire Chan on 29/5/24.
//

import SwiftUI

struct InjuryView: View {
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

                    if bodyPart == "Upper" {
                        // Shoulder Button and Line (Left)
                        Path { path in
                            path.move(to: CGPoint(x: imageWidth * 0.37, y: imageHeight * 0.15))
                            path.addLine(to: CGPoint(x: imageWidth * 0.15, y: imageHeight * 0.1))
                        }
                        .stroke(Color.blue, lineWidth: 2)
                        
                        Button(action: {
                            print("Left Shoulder tapped")
                        }) {
                            Text("Left Shoulder")
                                .padding(5)
                                .background(Color.blue.opacity(0.5))
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                        .position(x: imageWidth * 0.15, y: imageHeight * 0.1)
                        
                        // Shoulder Button and Line (Right)
                        Path { path in
                            path.move(to: CGPoint(x: imageWidth * 0.63, y: imageHeight * 0.15))
                            path.addLine(to: CGPoint(x: imageWidth * 0.85, y: imageHeight * 0.1))
                        }
                        .stroke(Color.blue, lineWidth: 2)
                        
                        Button(action: {
                            print("Right Shoulder tapped")
                        }) {
                            Text("Right Shoulder")
                                .padding(5)
                                .background(Color.blue.opacity(0.5))
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                        .position(x: imageWidth * 0.85, y: imageHeight * 0.1)
                        
                        // Elbow Button and Line (Left)
                        Path { path in
                            path.move(to: CGPoint(x: imageWidth * 0.33, y: imageHeight * 0.4))
                            path.addLine(to: CGPoint(x: imageWidth * 0.1, y: imageHeight * 0.45))
                        }
                        .stroke(Color.orange, lineWidth: 2)
                        
                        Button(action: {
                            print("Left Elbow tapped")
                        }) {
                            Text("Left Elbow")
                                .padding(5)
                                .background(Color.orange.opacity(0.5))
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                        .position(x: imageWidth * 0.1, y: imageHeight * 0.45)
                        
                        // Elbow Button and Line (Right)
                        Path { path in
                            path.move(to: CGPoint(x: imageWidth * 0.67, y: imageHeight * 0.4))
                            path.addLine(to: CGPoint(x: imageWidth * 0.9, y: imageHeight * 0.45))
                        }
                        .stroke(Color.orange, lineWidth: 2)
                        
                        Button(action: {
                            print("Right Elbow tapped")
                        }) {
                            Text("Right Elbow")
                                .padding(5)
                                .background(Color.orange.opacity(0.5))
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                        .position(x: imageWidth * 0.9, y: imageHeight * 0.45)
                        
                        // Neck Button and Line
                        Path { path in
                            path.move(to: CGPoint(x: imageWidth * 0.5, y: imageHeight * 0.12))
                            path.addLine(to: CGPoint(x: imageWidth * 0.7, y: imageHeight * 0.03))
                        }
                        .stroke(Color.purple, lineWidth: 2)
                        
                        Button(action: {
                            print("Neck tapped")
                        }) {
                            Text("Neck")
                                .padding(5)
                                .background(Color.purple.opacity(0.5))
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                        .position(x: imageWidth * 0.78, y: imageHeight * 0.03)
                        
                    } else {
                        // Knee Button and Line
                        Path { path in
                            path.move(to: CGPoint(x: imageWidth * 0.5, y: imageHeight * 0.75))
                            path.addLine(to: CGPoint(x: imageWidth * 0.8, y: imageHeight * 0.85))
                        }
                        .stroke(Color.red, lineWidth: 2)
                        
                        Button(action: {
                            print("Knee tapped")
                        }) {
                            Text("Knee")
                                .padding(5)
                                .background(Color.red.opacity(0.5))
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                        .position(x: imageWidth * 0.8, y: imageHeight * 0.85)
                        
                        // Ankle Button and Line (Left)
                        Path { path in
                            path.move(to: CGPoint(x: imageWidth * 0.43, y: imageHeight * 0.85))
                            path.addLine(to: CGPoint(x: imageWidth * 0.2, y: imageHeight * 0.9))
                        }
                        .stroke(Color.yellow, lineWidth: 2)
                        
                        Button(action: {
                            print("Left Ankle tapped")
                        }) {
                            Text("Left Ankle")
                                .padding(5)
                                .background(Color.yellow.opacity(0.5))
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                        .position(x: imageWidth * 0.2, y: imageHeight * 0.9)
                        
                        // Ankle Button and Line (Right)
                        Path { path in
                            path.move(to: CGPoint(x: imageWidth * 0.57, y: imageHeight * 0.85))
                            path.addLine(to: CGPoint(x: imageWidth * 0.8, y: imageHeight * 0.9))
                        }
                        .stroke(Color.yellow, lineWidth: 2)
                        
                        Button(action: {
                            print("Right Ankle tapped")
                        }) {
                            Text("Right Ankle")
                                .padding(5)
                                .background(Color.yellow.opacity(0.5))
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                        .position(x: imageWidth * 0.8, y: imageHeight * 0.9)
                        
                        // Thigh Button and Line (Left)
                        Path { path in
                            path.move(to: CGPoint(x: imageWidth * 0.43, y: imageHeight * 0.5))
                            path.addLine(to: CGPoint(x: imageWidth * 0.2, y: imageHeight * 0.55))
                        }
                        .stroke(Color.cyan, lineWidth: 2)
                        
                        Button(action: {
                            print("Left Thigh tapped")
                        }) {
                            Text("Left Thigh")
                                .padding(5)
                                .background(Color.cyan.opacity(0.5))
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                        .position(x: imageWidth * 0.2, y: imageHeight * 0.55)
                        
                        // Thigh Button and Line (Right)
                        Path { path in
                            path.move(to: CGPoint(x: imageWidth * 0.57, y: imageHeight * 0.5))
                            path.addLine(to: CGPoint(x: imageWidth * 0.8, y: imageHeight * 0.55))
                        }
                        .stroke(Color.cyan, lineWidth: 2)
                        
                        Button(action: {
                            print("Right Thigh tapped")
                        }) {
                            Text("Right Thigh")
                                .padding(5)
                                .background(Color.cyan.opacity(0.5))
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                        .position(x: imageWidth * 0.8, y: imageHeight * 0.55)
                    }
                }
                .frame(width: 300, height: 400)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .navigationTitle("Injury Details")
    }
}

#Preview {
    InjuryView(bodyPart: "Upper")
}
