//
//  FavoriteButton.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 29/05/23.
//

import SwiftUI

struct FavoriteButton: View {
    
    @State private var isButtonEnabled = true
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(Color("White-1"))
            Button {
                isButtonEnabled.toggle()
            } label: {
                if isButtonEnabled {
                    Image.favoriteIcon()
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                } else {
                    Image.favoriFillIcon()
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                }
                
            }
            
        }
        
    }
    
    
    struct FavoriteButton_Previews: PreviewProvider {
        static var previews: some View {
            FavoriteButton()
        }
    }
}
