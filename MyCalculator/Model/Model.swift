//
//  Model.swift
//  MyCalculator
//
//  Created by Илья Десятов on 21.03.2024.
//

import SwiftUI

enum Operation {
    case addition, subtract, multiply, divide, none
}

enum Buttons: String {
    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case minus = "-"
    case plus = "+"
    case multiple = "*"
    case divide = "/"
    case equal = "="
    case decimal = "."
    case percent = "%"
    case negative = "+/-"
    case clear = "AC"
    
    var buttonColor: Color {
        switch self {
        case .clear, .negative, .percent:
            return Color.grayCalc
        case .divide, .multiple, .minus, .plus, .equal:
            return Color.orangeCalc
        default:
            return Color.darkGrayCalc
        }
    }
    
    var buttonFontColor: Color {
        switch self {
        case .clear, .negative, .percent:
            return Color.black
        default:
            return Color.white
        }
    }
}
