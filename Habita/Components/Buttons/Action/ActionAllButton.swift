//
//  RemoveButton.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 29/05/23.
//

import SwiftUI

struct ActionAllButton: View {
    
    let iconButton: Image;
    let titleButton: String;
    let colorButton: String;
    
    
    init(iconButton: Image, titleButton: String, colorButton: String) {
        self.iconButton = iconButton
        self.titleButton = titleButton
        self.colorButton = colorButton
    }
    var body: some View {
        
        HStack(spacing:4) {
            iconButton
                .foregroundColor(Color(colorButton))
            Text(titleButton)
                .fontWeight(.medium)
                .font(.system(size: 14))
                .foregroundColor(Color(colorButton))
            
        }
        
    }
}

struct RemoveButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionAllButton(iconButton: Image.closeIcon(), titleButton: "Remover dos favoritos", colorButton: "Gray-0")
    }
}
