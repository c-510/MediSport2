//
//  ContentView.swift
//  MediSport2
//
//  Created by Claire Chan on 29/5/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var authViewModel = AuthViewModel()
    
    var body: some View {
        NavigationView {
            if authViewModel.isAuthenticated {
                MainView()
                    .environmentObject(authViewModel)
            } else {
                LoginView()
                    .environmentObject(authViewModel)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


#Preview {
    ContentView()
}
