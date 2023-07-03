//
//  LargeInputTextField.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 03/07/23.
//

import SwiftUI

struct LargeInputTextField: View {
    
    @State private var isInputEnabled = true
    @State private var text: String = ""
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack(spacing: 0) {
                VStack {
                    
                    TextField("Digite algo", text: $text)
                        .padding(.leading, 8)
                        .padding(.top, 16)
                        .padding(.bottom, 16)
                        .frame(width: UIScreen.main.bounds.width *  0.91, height: UIScreen.main.bounds.height * 0.075)
                    
                   
                        .foregroundColor(isInputEnabled ?   Color("Black-1") : Color("Gray-0"))
                        .onChange(of: text) { newValue in
                            isInputEnabled = !newValue.isEmpty
                        }

                    
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color("Black-1"), lineWidth: 1)
                )
            }
            
            
        }
    }
}

struct LargeInputTextField_Previews: PreviewProvider {
    static var previews: some View {
        LargeInputTextField()
    }
}
