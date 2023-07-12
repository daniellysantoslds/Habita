//
//  testeView.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 12/07/23.
//

import SwiftUI

struct testeView: View {
    @State private var textFieldText = ""
    @State private var isTextFieldActive = false
    
    var body: some View {
        TextField("Digite algo", text: $textFieldText)
            .padding()
            .background(isTextFieldActive ? Color.black : Color.gray)
            .foregroundColor(.white)
            .cornerRadius(8)
            
            .padding()
            .onChange(of: textFieldText) { _ in
                isTextFieldActive = !textFieldText.isEmpty
            }
    }
}


struct testeView_Previews: PreviewProvider {
    static var previews: some View {
        testeView()
    }
}
