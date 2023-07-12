//
//  SmallInputTextField.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 12/07/23.
//

import SwiftUI

struct SmallInputTextField: View {
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
                    .font(.system(size: 14))
                    .fontWeight(.medium)
                    .foregroundColor(isTextFieldActive ? Color("Black-1") : Color("Gray-0"))
                
                VStack {
                    HStack {
                        TextField("", text: $textFieldText)
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                        Text("m²")
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                            .foregroundColor(isTextFieldActive ? Color("Black-1") : Color("Gray-0"))
                        
                        
                    }
                    .padding(.leading, 8)
                    .padding(.trailing, 8)
                    .padding(.top, 16)
                    .padding(.bottom, 16)
                    .frame(width: UIScreen.main.bounds.width *  0.43, height: UIScreen.main.bounds.height * 0.05)
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
    
}

struct SmallInputTextField_Previews: PreviewProvider {
    static var previews: some View {
        SmallInputTextField(label: "Mínima")
    }
}
