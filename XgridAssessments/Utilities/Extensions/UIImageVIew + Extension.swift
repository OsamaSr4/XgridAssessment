//
//  UIImageVIew + Extension.swift
//  TrellisAssessment
//
//  Created by MacBook Pro on 11/02/2024.
//

import Foundation
import SDWebImage
import UIKit

extension UIImageView {
    func loadImageWithPlaceHolder(from urlString: String?,
                                  showLoader :Bool = true,
                                  withplaceHolder:Bool=true,
                                  placeHolder : UIImage = UIImage(named: "profileImagePlaceholder")!) {
        
        if showLoader {
            self.sd_imageIndicator = SDWebImageActivityIndicator.white
        }
        if withplaceHolder {
            self.sd_setImage(with: URL(string: (urlString) ?? ""),
                             placeholderImage: placeHolder,
                             options: .refreshCached) { imageReceive, error, cacheType, url in
                
                if let _ = error {
                    self.image = placeHolder
                }else{
                    DispatchQueue.main.async {
                        self.image = imageReceive
                    }
                }
            }
        }else{
            self.sd_setImage(with: URL(string: (urlString) ?? ""))
        }
    }
}
