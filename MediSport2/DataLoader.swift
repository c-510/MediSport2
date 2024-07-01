//
//  DataLoader.swift
//  MediSport2
//
//  Created by Javier Yeow on 1/7/24.
//

import Foundation

class DataLoader {
    func loadDiagnosis() -> [Diagnosis] {
        guard let url = Bundle.main.url(forResource: "diagnosis", withExtension: "json"),
              let data = try? Data(contentsOf: url) else {
            return []
        }
        
        let decoder = JSONDecoder()
        return (try? decoder.decode([Diagnosis].self, from: data)) ?? []
    }
}

