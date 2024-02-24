//
//  ProductEntity.swift
//  XgridAssessments
//
//  Created by MacBook Pro on 24/02/2024.
//

import Foundation

// MARK: - Welcome
class ProductResponse: Codable {
    let success: Int
    let data: ProductResult
}

class ProductResult : Codable {
    let cart: Cart?
    var recommendedProducts: RecommendedProducts?
    
    enum CodingKeys: String, CodingKey {
        case cart = "cart"
        case  recommendedProducts = "recommended_products"
    }
}
