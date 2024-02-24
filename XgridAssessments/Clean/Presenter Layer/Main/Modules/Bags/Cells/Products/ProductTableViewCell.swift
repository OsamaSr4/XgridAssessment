//
//  ProductTableViewCell.swift
//  XgridAssessments
//
//  Created by MacBook Pro on 24/02/2024.
//

import UIKit

class ProductTableViewCell: UITableViewCell,IdentifiableCell {
    
    //MARK: Product description Outlets
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productCatergoryLbl: UILabel!
    @IBOutlet weak var productNameLbl: UILabel!
    @IBOutlet weak var disCountedReatesLbl: UILabel!
    @IBOutlet weak var currentRateLbl: UILabel!
    
    //MARK: quantitiy Outlets
    @IBOutlet weak var addQuantityButton: UIButton!
    @IBOutlet weak var removeQuantityButton: UIButton!
    @IBOutlet weak var deleteProducts: UIButton!
    @IBOutlet weak var QuantityLbl: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(_ data: Products ){
        self.productNameLbl.text = data.name ?? ""
        self.productCatergoryLbl.text = data.manufacturer ?? ""
        self.currentRateLbl.text = data.priceFormated
        self.disCountedReatesLbl.text = data.priceFormated
        self.productImage.loadImageWithPlaceHolder(from: data.thumb)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
