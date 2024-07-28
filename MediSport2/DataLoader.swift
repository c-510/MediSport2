//
//  DataLoader.swift
//  MediSport2
//
//  Created by Claire Chan on 27/7/24.
//

import Foundation

class DataLoader {
    func loadDiagnosis() -> [Diagnosis] {
        guard let url = Bundle.main.url(forResource: "diagnosis", withExtension: "json") else {
            print("Failed to locate file in bundle.")
            return []
        }
        
        // Print the file URL to debug
        print("File URL: \(url)")
        
        do {
            let data = try Data(contentsOf: url)
            print("Data loaded successfully: \(data.count) bytes")
            let jsonString = String(data: data, encoding: .utf8)
            let diagnoses = try JSONDecoder().decode([Diagnosis].self, from: data)
            print("Diagnoses parsed successfully")
            return diagnoses
        } catch {
            print("Failed to load and parse data: \(error)")
            return []
        }
    }
}
