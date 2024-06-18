//
//  User.swift
//  MediSport2
//
//  Created by Javier Yeow on 30/5/24.
//

import SwiftUI

struct User {
    var username: String
    var password: String
}

class AuthViewModel: ObservableObject {
    @Published var isAuthenticated = false
    @Published var currentUser: User?
    
    private var registeredUsers = [User]()
    
    func register(username: String, password: String) {
        let newUser = User(username: username, password: password)
        registeredUsers.append(newUser)
        currentUser = newUser
        isAuthenticated = true
    }
    
    func login(username: String, password: String) {
        if let user = registeredUsers.first(where: { $0.username == username && $0.password == password }) {
            currentUser = user
            isAuthenticated = true
        }
    }
    
    func logout() {
        currentUser = nil
        isAuthenticated = false
    }
}

