//
//  Tip.swift
//  Tip Calculator
//
//  Created by AHMET HAKAN YILDIRIM on 16.11.2023.
//

import Foundation

enum Tip {
    case none
    case tenPercent
    case fifteenPercent
    case twentyPercent
    case custom(value: Int)

    var stringValue: String {
        switch self {
        case .none:
            return ""
        case .tenPercent:
            return "10%"
        case .fifteenPercent:
            return "15%"
        case .twentyPercent:
            return "20%"
        case let .custom(value):
            return String(value)
        }
    }
}
