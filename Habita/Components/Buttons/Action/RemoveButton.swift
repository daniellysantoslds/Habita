//
//  RemoveButton.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 29/05/23.
//

import SwiftUI

struct RemoveButton: View {
    
    let iconButton: String;
    let titleButton: String;
    
    var body: some View {
        
        HStack {
            Image(systemName: iconButton)
                .foregroundColor(Color("Gray-0"))
            Text(titleButton)
                .fontWeight(.medium)
                .font(.system(size: 12))
                .foregroundColor(Color("Gray-0"))
            
        }
        
    }
}

struct RemoveButton_Previews: PreviewProvider {
    static var previews: some View {
        RemoveButton(iconButton: "xmark", titleButton: "Remover dos favoritos")
    }
}
