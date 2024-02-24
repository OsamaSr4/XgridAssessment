
import Foundation

struct Totals: Codable {

  var title : String? = nil
  var text  : String? = nil
  var value : String? = nil
  var code  : String? = nil

  enum CodingKeys: String, CodingKey {

    case title = "title"
    case text  = "text"
    case value = "value"
    case code  = "code"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    title = try values.decodeIfPresent(String.self , forKey: .title )
    text  = try values.decodeIfPresent(String.self , forKey: .text  )
    value = try values.decodeIfPresent(String.self , forKey: .value )
    code  = try values.decodeIfPresent(String.self , forKey: .code  )
 
  }

  init() {

  }

}