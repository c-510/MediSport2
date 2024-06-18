//
//  MainView.swift
//  MediSport2
//
//  Created by Javier Yeow on 30/5/24.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "bandage")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(.blue)
                .padding(.bottom, 20)
            Text("MediSport")
                .font(.largeTitle)
                .fontWeight(.bold)
            NavigationLink(destination: UpperOrLower()) {
                Text("Injured? Click here!")
                    .font(.title2)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.top, 20)
            }
            Spacer()
            Button(action: {
                authViewModel.logout()
            }) {
                Text("Logout")
                    .font(.title2)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.top, 20)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

#Preview {
    MainView()
}
