//
//  MainView.swift
//  MyCalculator
//
//  Created by Илья Десятов on 21.03.2024.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        ZStack{
            //MARK: - Background
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 12) {
                
                //MARK: - Display
                Spacer()
                HStack {
                    Spacer()
                    Text(viewModel.value)
                        .foregroundStyle(.white)
                        .font(.system(size: 90))
                        .fontWeight(.light)
                }
                .padding(.horizontal)
                
                //MARK: Buttons
                ForEach(viewModel.buttonsArray, id: \.self) { row in
                    HStack(spacing: 12) {
                        ForEach(row, id: \.self) { item in
                            Button {
                                viewModel.didTap(item: item)
                            } label: {
                                Text(item.rawValue)
                                    .frame(
                                        width: viewModel.changeWidthOfButton(item: item),
                                        height: viewModel.changeHeightOfButton()
                                    )
                                    .foregroundStyle(item.buttonFontColor)
                                    .background(item.buttonColor)
                                    .font(.system(size: 35))
                                    .cornerRadius(40)
                            }
                        }
                    }
                }
            }
            .padding(.bottom, 30)
        }
    }
   
}

#Preview {
    MainView()
        .environmentObject(ViewModel())
}
