//
//  UpperOrLower.swift
//  MediSport2
//
//  Created by Claire Chan on 29/5/24.
//

import SwiftUI

struct UpperOrLower: View {
    var body: some View {
        VStack {
            Text("Where is your injury?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .multilineTextAlignment(.center)
            Spacer()
            NavigationLink(destination: InjuryView(bodyPart: "Upper")) {
                Text("Upper Body")
                    .font(.title2)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.bottom, 20)
            }
            NavigationLink(destination: InjuryView(bodyPart: "Lower")) {
                Text("Lower Body")
                    .font(.title2)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.bottom, 20)
            }
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .navigationTitle("Select Body Part")
    }
}

#Preview {
    UpperOrLower()
}
