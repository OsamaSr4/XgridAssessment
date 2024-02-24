
import Foundation

struct Cart: Codable {
    
    var products          : [Products]? = []
    var vouchers          : [String]?   = []
    var couponStatus      : String?     = nil
    var coupon            : String?     = nil
    var voucherStatus     : String?     = nil
    var voucher           : String?     = nil
    var rewardStatus      : Int?        = nil
    var reward            : String?     = nil
    var totals            : [Totals]?   = []
    var offer             : String?     = nil
    var offerAverage      : Int?        = nil
    var total             : String?     = nil
    var totalRaw          : Double?     = nil
    var totalProductCount : Int?        = nil
    
    enum CodingKeys: String, CodingKey {
        
        case products          = "products"
        case vouchers          = "vouchers"
        case couponStatus      = "coupon_status"
        case coupon            = "coupon"
        case voucherStatus     = "voucher_status"
        case voucher           = "voucher"
        case rewardStatus      = "reward_status"
        case reward            = "reward"
        case totals            = "totals"
        case offer             = "offer"
        case offerAverage      = "offer_average"
        case total             = "total"
        case totalRaw          = "total_raw"
        case totalProductCount = "total_product_count"
        
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        products          = try values.decodeIfPresent([Products].self , forKey: .products          )
        vouchers          = try values.decodeIfPresent([String].self   , forKey: .vouchers          )
        couponStatus      = try values.decodeIfPresent(String.self     , forKey: .couponStatus      )
        coupon            = try values.decodeIfPresent(String.self     , forKey: .coupon            )
        voucherStatus     = try values.decodeIfPresent(String.self     , forKey: .voucherStatus     )
        voucher           = try values.decodeIfPresent(String.self     , forKey: .voucher           )
        rewardStatus      = try values.decodeIfPresent(Int.self        , forKey: .rewardStatus      )
        reward            = try values.decodeIfPresent(String.self     , forKey: .reward            )
        totals            = try values.decodeIfPresent([Totals].self   , forKey: .totals            )
        offer             = try values.decodeIfPresent(String.self     , forKey: .offer             )
        offerAverage      = try values.decodeIfPresent(Int.self        , forKey: .offerAverage      )
        total             = try values.decodeIfPresent(String.self     , forKey: .total             )
        totalRaw          = try values.decodeIfPresent(Double.self     , forKey: .totalRaw          )
        totalProductCount = try values.decodeIfPresent(Int.self        , forKey: .totalProductCount )
        
    }
    
    init() {
        
    }
    
}
