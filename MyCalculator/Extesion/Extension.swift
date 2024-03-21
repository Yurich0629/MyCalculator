//
//  Extension.swift
//  MyCalculator
//
//  Created by Илья Десятов on 21.03.2024.
//

import SwiftUI

extension Color {
    static let darkGrayCalcColor = Color("darkGrayCalc")
    static let grayCalcColor = Color("grayCalc")
    static let orangeCalcColor = Color("orangeCalc")
}

extension Buttons {
    func buttonToOperation() -> Operation {
        switch self {
        case .plus:
            return .addition
        case .minus:
            return .subtract
        case .multiple:
            return .multiply
        case .divide:
            return .divide
        default:
            return .none
        }
    }
}
