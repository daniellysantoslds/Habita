//
//  RemoveButton.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 29/05/23.
//

import SwiftUI

struct ActionAllButton: View {
    
    let iconButton: String;
    let titleButton: String;
    let colorButton: String;
    
    var body: some View {
        
        HStack(spacing:4) {
            Image(systemName: iconButton)
                .foregroundColor(Color(colorButton))
            Text(titleButton)
                .fontWeight(.medium)
                .font(.system(size: 12))
                .foregroundColor(Color(colorButton))
            
        }
        
    }
}

struct RemoveButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionAllButton(iconButton: "xmark", titleButton: "Remover dos favoritos", colorButton: "Gray-0")
    }
}
