
import Foundation

struct Special: Codable {

  var discountRatio                : String? = nil
  var originalPrice                : String? = nil
  var priceFormated                : String? = nil
  var originalPriceWithoutCurrency : Double? = nil
  var priceWithoutCurrency         : Double? = nil

  enum CodingKeys: String, CodingKey {

    case discountRatio                = "discount_ratio"
    case originalPrice                = "original_price"
    case priceFormated                = "price_formated"
    case originalPriceWithoutCurrency = "originalPriceWithoutCurrency"
    case priceWithoutCurrency         = "priceWithoutCurrency"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    discountRatio                = try values.decodeIfPresent(String.self , forKey: .discountRatio                )
    originalPrice                = try values.decodeIfPresent(String.self , forKey: .originalPrice                )
    priceFormated                = try values.decodeIfPresent(String.self , forKey: .priceFormated                )
    originalPriceWithoutCurrency = try values.decodeIfPresent(Double.self , forKey: .originalPriceWithoutCurrency )
    priceWithoutCurrency         = try values.decodeIfPresent(Double.self , forKey: .priceWithoutCurrency         )
 
  }

  init() {

  }

}