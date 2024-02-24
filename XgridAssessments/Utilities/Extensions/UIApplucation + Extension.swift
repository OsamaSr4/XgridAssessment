//
//  UIApplucation + Extension.swift
//  TrellisAssessment
//
//  Created by MacBook Pro on 11/02/2024.
//

import Foundation
import MessageUI


extension UIApplication {

    class func getTopViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {

        if let presented = base?.presentedViewController {
            return getTopViewController(base: presented)
        }
        return base
    }
}
