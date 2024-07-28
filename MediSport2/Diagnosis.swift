//
//  Diagnosis.swift
//  MediSport2
//
//  Created by Javier Yeow on 1/7/24.
//

import Foundation

struct Diagnosis: Identifiable, Decodable {
    var id = UUID()
    var symptoms: [String: String] // Key is symptom, value is "Y" or "N"
    var diagnosis: String
    var details: String

    enum CodingKeys: String, CodingKey {
        case symptoms
        case diagnosis
        case details
    }
}
