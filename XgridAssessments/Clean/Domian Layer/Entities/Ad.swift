
import Foundation

struct Ad: Codable {
    
    var filters : [String]? = []
    
    enum CodingKeys: String, CodingKey {
        
        case filters = "filters"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        filters = try values.decodeIfPresent([String].self , forKey: .filters )
        
    }
    
    init() {
        
    }
    
}
