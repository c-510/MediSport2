//
//  LoginView.swift
//  MediSport2
//
//  Created by Javier Yeow on 30/5/24.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @State private var username = ""
    @State private var password = ""
    @State private var showRegister = false
    
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(5)
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(5)
            Button(action: {
                authViewModel.login(username: username, password: password)
            }) {
                Text("Login test")
                    .font(.title2)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.top, 20)
            }
            Button(action: {
                showRegister.toggle()
            }) {
                Text("Don't have an account? Register")
                    .foregroundColor(.blue)
                    .padding(.top, 10)
            }
            .sheet(isPresented: $showRegister) {
                RegisterView()
                    .environmentObject(authViewModel)
            }
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
