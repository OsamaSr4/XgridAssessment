
import Foundation

struct Options: Codable {

  var optionId        : Int?           = nil
  var productOptionId : Int?           = nil
  var type            : String?        = nil
  var required        : Int?           = nil
  var name            : String?        = nil
  var enName          : String?        = nil
  var optionValue     : [OptionValue]? = []

  enum CodingKeys: String, CodingKey {

    case optionId        = "option_id"
    case productOptionId = "product_option_id"
    case type            = "type"
    case required        = "required"
    case name            = "name"
    case enName          = "en_name"
    case optionValue     = "option_value"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    optionId        = try values.decodeIfPresent(Int.self           , forKey: .optionId        )
    productOptionId = try values.decodeIfPresent(Int.self           , forKey: .productOptionId )
    type            = try values.decodeIfPresent(String.self        , forKey: .type            )
    required        = try values.decodeIfPresent(Int.self           , forKey: .required        )
    name            = try values.decodeIfPresent(String.self        , forKey: .name            )
    enName          = try values.decodeIfPresent(String.self        , forKey: .enName          )
    optionValue     = try values.decodeIfPresent([OptionValue].self , forKey: .optionValue     )
 
  }

  init() {

  }

}