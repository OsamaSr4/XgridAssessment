
import Foundation

struct OptionValue: Codable {

  var productOptionVariantId : Int?    = nil
  var quantity               : Int?    = nil
  var image                  : String? = nil
  var hexColor               : String? = nil
  var sku                    : String? = nil
  var price                  : String? = nil
  var priceFormated          : String? = nil
  var eventPrice             : String? = nil
  var name                   : String? = nil
  var enName                 : String? = nil

  enum CodingKeys: String, CodingKey {

    case productOptionVariantId = "product_option_variant_id"
    case quantity               = "quantity"
    case image                  = "image"
    case hexColor               = "hex_color"
    case sku                    = "sku"
    case price                  = "price"
    case priceFormated          = "price_formated"
    case eventPrice             = "event_price"
    case name                   = "name"
    case enName                 = "en_name"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    productOptionVariantId = try values.decodeIfPresent(Int.self    , forKey: .productOptionVariantId )
    quantity               = try values.decodeIfPresent(Int.self    , forKey: .quantity               )
    image                  = try values.decodeIfPresent(String.self , forKey: .image                  )
    hexColor               = try values.decodeIfPresent(String.self , forKey: .hexColor               )
    sku                    = try values.decodeIfPresent(String.self , forKey: .sku                    )
    price                  = try values.decodeIfPresent(String.self , forKey: .price                  )
    priceFormated          = try values.decodeIfPresent(String.self , forKey: .priceFormated          )
    eventPrice             = try values.decodeIfPresent(String.self , forKey: .eventPrice             )
    name                   = try values.decodeIfPresent(String.self , forKey: .name                   )
    enName                 = try values.decodeIfPresent(String.self , forKey: .enName                 )
 
  }

  init() {

  }

}