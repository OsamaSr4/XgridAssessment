
import Foundation

struct Products: Codable {

  var id                   : String?              = nil
  var thumb                : String?              = nil
  var priceFormated        : String?              = nil
  var priceWithoutCurrency : String?              = nil
//  var price                : String?              = nil
  var name                 : String?              = nil
  var enName               : String?              = nil
  var description          : String?              = nil
  var sku                  : String?              = nil
  var isbn                 : String?              = nil
  var hasOption            : Bool?                = nil
//  var categoryId           : String?                 = nil
//  var quantity             : String?                 = nil
  var manufacturer         : String?              = nil
  var isNew                : Bool?                = nil
  var isExclusive          : Bool?                = nil
  var order                : Int?                 = nil
  var score                : String?              = nil
  var eventPrice           : String?              = nil
  var rating               : Double?              = nil
  var totalReviews         : String?              = nil
  var seoUrlAr             : String?              = nil
  var seoUrlEn             : String?              = nil
  var shareUrl             : String?              = nil
  var options              : [Options]?           = []
  var categoryHierarchy    : [CategoryHierarchy]? = []

  enum CodingKeys: String, CodingKey {

    case id                   = "id"
    case thumb                = "thumb"
    case priceFormated        = "price_formated"
    case priceWithoutCurrency = "priceWithoutCurrency"
//    case price                = "price"
    case name                 = "name"
    case enName               = "en_name"
    case description          = "description"
    case sku                  = "sku"
    case isbn                 = "isbn"
    case hasOption            = "has_option"
//    case categoryId           = "category_id"
//    case quantity             = "quantity"
    case manufacturer         = "manufacturer"
    case isNew                = "is_new"
    case isExclusive          = "is_exclusive"
    case order                = "order"
    case score                = "score"
    case eventPrice           = "event_price"
    case rating               = "rating"
    case totalReviews         = "total_reviews"
    case seoUrlAr             = "seo_url_ar"
    case seoUrlEn             = "seo_url_en"
    case shareUrl             = "share_url"
    case options              = "options"
    case categoryHierarchy    = "category_hierarchy"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    id                   = try values.decodeIfPresent(String.self              , forKey: .id                   )
    thumb                = try values.decodeIfPresent(String.self              , forKey: .thumb                )
    priceFormated        = try values.decodeIfPresent(String.self              , forKey: .priceFormated        )
    priceWithoutCurrency = try values.decodeIfPresent(String.self              , forKey: .priceWithoutCurrency )
//    price                = try values.decodeIfPresent(String.self              , forKey: .price                )
    name                 = try values.decodeIfPresent(String.self              , forKey: .name                 )
    enName               = try values.decodeIfPresent(String.self              , forKey: .enName               )
    description          = try values.decodeIfPresent(String.self              , forKey: .description          )
    sku                  = try values.decodeIfPresent(String.self              , forKey: .sku                  )
    isbn                 = try values.decodeIfPresent(String.self              , forKey: .isbn                 )
    hasOption            = try values.decodeIfPresent(Bool.self                , forKey: .hasOption            )
//    categoryId           = try values.decodeIfPresent(String.self                 , forKey: .categoryId           )
//    quantity             = try values.decodeIfPresent(String.self                 , forKey: .quantity             )
    manufacturer         = try values.decodeIfPresent(String.self              , forKey: .manufacturer         )
    isNew                = try values.decodeIfPresent(Bool.self                , forKey: .isNew                )
    isExclusive          = try values.decodeIfPresent(Bool.self                , forKey: .isExclusive          )
    order                = try values.decodeIfPresent(Int.self                 , forKey: .order                )
    score                = try values.decodeIfPresent(String.self              , forKey: .score                )
    eventPrice           = try values.decodeIfPresent(String.self              , forKey: .eventPrice           )
    rating               = try values.decodeIfPresent(Double.self              , forKey: .rating               )
    totalReviews         = try values.decodeIfPresent(String.self              , forKey: .totalReviews         )
    seoUrlAr             = try values.decodeIfPresent(String.self              , forKey: .seoUrlAr             )
    seoUrlEn             = try values.decodeIfPresent(String.self              , forKey: .seoUrlEn             )
    shareUrl             = try values.decodeIfPresent(String.self              , forKey: .shareUrl             )
    options              = try values.decodeIfPresent([Options].self           , forKey: .options              )
    categoryHierarchy    = try values.decodeIfPresent([CategoryHierarchy].self , forKey: .categoryHierarchy    )
 
  }

  init() {

  }

}
