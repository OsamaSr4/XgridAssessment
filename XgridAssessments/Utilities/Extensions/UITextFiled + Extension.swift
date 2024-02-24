//
//  UITextFiled + Extension.swift
//  TrellisAssessment
//
//  Created by MacBook Pro on 12/02/2024.
//

import Foundation
import UIKit

extension UITextField {
    func getUpdatedText(range:NSRange, str: String) -> String {
        let currentText = (self.text ?? "") as NSString
        let updatedText = currentText.replacingCharacters(in: range, with: str)
        return updatedText
    }
}

