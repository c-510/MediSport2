//
//  NoSymptomView.swift
//  MediSport2
//
//  Created by Claire Chan on 20/7/24.
//

import SwiftUI
import UIKit

struct NoSymptomView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer() // Add Spacer to push content to the center vertically

                Text("Can't find your symptom?")
                    .font(.largeTitle)
                    .padding()
                    .multilineTextAlignment(.center) // Center align text

                Text("Please contact support or visit our help section for further assistance.")
                    .font(.body)
                    .padding()
                    .multilineTextAlignment(.center) // Center align text

                Spacer().frame(height: 20)

                Button(action: {
                    if let url = URL(string: "tel://995"), UIApplication.shared.canOpenURL(url) {
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    }
                }) {
                    Text("To call an ambulance, click here")
                        .frame(width: geometry.size.width * 0.8)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 20)

                Button(action: {
                    if let url = URL(string: "https://www.google.com/maps/search/?api=1&query=nearest+clinic"), UIApplication.shared.canOpenURL(url) {
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    }
                }) {
                    Text("Find the nearest clinic")
                        .frame(width: geometry.size.width * 0.8)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 20)

                Spacer() // Add Spacer to push content to the center vertically
            }
            .frame(width: geometry.size.width, height: geometry.size.height) // Center horizontally and vertically
            .navigationBarTitle("No Symptom Found", displayMode: .inline)
        }
    }
}

struct NoSymptomView_Previews: PreviewProvider {
    static var previews: some View {
        NoSymptomView()
    }
}
