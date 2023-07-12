//
//  LargeInputTextField.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 03/07/23.
//

import SwiftUI

struct LargeInputTextField: View {
    
    @State private var isTextFieldActive = false
    @State private var textFieldText = ""
    
    let label : String;
    
    init(isTextFieldActive: Bool = false, textFieldText: String = "", label: String) {
        self.isTextFieldActive = isTextFieldActive
        self.textFieldText = textFieldText
        self.label = label
    }
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack(alignment: .leading, spacing: 8) {
                
                Text(label)
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .foregroundColor(isTextFieldActive ? Color("Black-1") : Color("Gray-0"))
                
                VStack {
                    TextField("", text: $textFieldText)
                        .padding(.leading, 8)
                        .padding(.top, 16)
                        .padding(.bottom, 16)
                        .frame(width: UIScreen.main.bounds.width *  0.91, height: UIScreen.main.bounds.height * 0.075)
                        .foregroundColor(Color("Black-1"))
                        .background(Color.white)
                        .onChange(of: textFieldText) { _ in
                            isTextFieldActive = !textFieldText.isEmpty
                        }
                    
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(isTextFieldActive ? Color("Black-1") : Color("Gray-0"), lineWidth: 1)
                )
            }
            
        }
    }
    
    
    struct LargeInputTextField_Previews: PreviewProvider {
        static var previews: some View {
            LargeInputTextField( label: "Nome compelto")
        }
    }
    
}
