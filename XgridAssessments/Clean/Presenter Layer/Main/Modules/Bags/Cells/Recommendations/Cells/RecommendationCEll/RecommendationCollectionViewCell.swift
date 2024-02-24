//
//  RecommendationCollectionViewCell.swift
//  XgridAssessments
//
//  Created by MacBook Pro on 24/02/2024.
//

import UIKit

class RecommendationCollectionViewCell: UICollectionViewCell , IdentifiableCell {

    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!

    @IBOutlet weak var pickItemButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
