
import Foundation

struct ExampleJson2KtSwift: Codable {

  var success : Int?      = nil
  var error   : [String]? = []
  var data    : Data?     = Data()

  enum CodingKeys: String, CodingKey {

    case success = "success"
    case error   = "error"
    case data    = "data"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    success = try values.decodeIfPresent(Int.self      , forKey: .success )
    error   = try values.decodeIfPresent([String].self , forKey: .error   )
    data    = try values.decodeIfPresent(Data.self     , forKey: .data    )
 
  }

  init() {

  }

}