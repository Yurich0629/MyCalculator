//
//  MyCalculatorApp.swift
//  MyCalculator
//
//  Created by Илья Десятов on 21.03.2024.
//

import SwiftUI

@main
struct MyCalculatorApp: App {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(viewModel)
        }
    }
}
