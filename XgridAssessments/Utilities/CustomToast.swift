//
//  CustomToast.swift
//  TrellisAssessment
//
//  Created by MacBook Pro on 11/02/2024.
//

import Foundation
import Toast_Swift
import UIKit

enum ToastType {
    case error
    case success
}

class Toaster {
    static let shared = Toaster()
    
    func showErrorToast(_ message: String, duration: Double = 2.5, view: UIView, field: UIView? = nil) {
        configure()
        let image = UIImage(named: "error")
        view.makeToast(message, duration: duration, position: .top, image: image, completion: {
            didTap in
            //field?.becomeFirstResponder()
        })
        
    }
    
    func showSuccesToast(_ message: String, duration: Double = 2.5, view: UIView, field: UIView? = nil) {
        configure()
        let image = UIImage(named: "success")
        view.makeToast(message, duration: duration, position: .top, image: image, completion: {
            didTap in
            //field?.becomeFirstResponder()
        })
    }
    
    func configure() {
        var style = ToastStyle()
        style.titleFont = UIFont(name: "PoppinsRegular", size: 16) ?? .systemFont(ofSize: 16)
        style.messageFont = UIFont(name: "PoppinsRegular", size: 14) ?? .systemFont(ofSize: 14)
        style.backgroundColor = UIColor(hexString: "#F2F2F2")
        style.titleColor = UIColor(hexString: "#272728")
        style.messageColor = UIColor(hexString: "#272728")
        style.messageAlignment = .left
        style.messageNumberOfLines = 0
        style.imageSize = CGSize(width: 22, height: 22)
        ToastManager.shared.style = style
    }
}
