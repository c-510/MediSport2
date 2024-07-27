//
//  Diagnosis.swift
//  MediSport2
//
//  Created by Javier Yeow on 1/7/24.
//

import Foundation

struct Diagnosis: Codable, Identifiable {
    var id = UUID()
    var symptoms: [String: String] // Key is symptom, value is "Y" or "N"
    var diagnosis: String
    var details: String
}
