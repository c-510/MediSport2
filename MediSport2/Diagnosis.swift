//
//  Diagnosis.swift
//  MediSport2
//
//  Created by Javier Yeow on 1/7/24.
//

import Foundation

struct Diagnosis: Codable, Identifiable {
    var id: String { bodyPart + symptoms.joined() }
    var bodyPart: String
    var symptoms: [String]
    var diagnosis: String
}
