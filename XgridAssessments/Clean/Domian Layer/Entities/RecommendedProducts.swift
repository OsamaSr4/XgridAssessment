
import Foundation

struct RecommendedProducts: Codable {

  var products : [Products]? = []
  var Ad : Ad? 

  enum CodingKeys: String, CodingKey {

    case products = "products"
    case Ad       = "Ad"
  
  }


}
