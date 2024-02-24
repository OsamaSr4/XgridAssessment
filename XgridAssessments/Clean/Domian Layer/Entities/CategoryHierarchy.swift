
import Foundation

struct CategoryHierarchy: Codable {
    
//    var categoryId : String?    = nil
    var name       : String? = nil
    var enName     : String? = nil
    
    enum CodingKeys: String, CodingKey {
        
//        case categoryId = "category_id"
        case name       = "name"
        case enName     = "en_name"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
//        categoryId = try values.decodeIfPresent(String.self    , forKey: .categoryId )
        name       = try values.decodeIfPresent(String.self , forKey: .name       )
        enName     = try values.decodeIfPresent(String.self , forKey: .enName     )
        
    }
    
    init() {
        
    }
    
}
