//
//  DashboardLocalDS.swift
//  
//
//

import Foundation
import RealmSwift

struct BagsLocalDS {
    
    func loadJson() -> ProductResult? {
        if let url = Bundle.main.url(forResource: "Mobile-Task-API-Response", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(ProductResponse.self, from: data)
                return jsonData.data
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}



