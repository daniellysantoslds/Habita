//
//  ShareButton.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 16/06/23.
//

import SwiftUI

struct ShareButton: View {
    
    @State private var isButtonEnabled = true
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 40, height: 40)
                .foregroundColor(Color("White-1"))
            Button {
                isButtonEnabled.toggle()
            } label: {
                if isButtonEnabled {
                    Image.shareIcon()
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color("Black-1"))
                } else {
                    Image.shareIcon()
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color("Black-1"))
                }
                
            }
            
        }
        
    }
    
    
    struct ShareButton_Previews: PreviewProvider {
        static var previews: some View {
            ShareButton()
        }
    }
}
