//
//  HelperProtocols.swift
//  TrellisAssessment
//
//  Created by MacBook Pro on 11/02/2024.
//

import Foundation
import UIKit

protocol IdentifiableCell {
    static func getIdentifier() -> String
}

extension IdentifiableCell {
    static var name: String {
        return String(describing: self)
    }

    static func getIdentifier() -> String {
        return self.name
    }
}
