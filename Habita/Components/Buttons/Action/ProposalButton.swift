//
//  ProposalButton.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 16/06/23.
//

import SwiftUI

struct ProposalButton: View {
    
    let iconCancel: Image;
    let titleCancelButton: String;
    let colorCancelButton: String;
    let iconAction: Image;
    let titleActionButton: String;
    let colorActionButton: String;
    
    init(iconCancel: Image, titleCancelButton: String, colorCancelButton: String, iconAction: Image, titleActionButton: String, colorActionButton: String ) {
        self.iconCancel = iconCancel
        self.titleCancelButton = titleCancelButton
        self.colorCancelButton = colorCancelButton
        self.iconAction = iconAction
        self.titleActionButton = titleActionButton
        self.colorActionButton = colorActionButton
    }
    
    
    
    var body: some View {
        
        VStack {
            Divider()
                .padding(.bottom, 16)
                .frame(width: 350)
            
            HStack(spacing: 63) {
                
                HStack(spacing: 4) {
                    iconCancel
                        .foregroundColor(Color(colorCancelButton))
                    Text(titleCancelButton)
                        .fontWeight(.medium)
                        .font(.system(size: 12))
                        .foregroundColor(Color(colorCancelButton))
                }
                .padding(.leading, 16)
                
                HStack(spacing: 4) {
                    iconAction
                        .foregroundColor(Color(colorActionButton))
                    Text(titleActionButton)
                        .fontWeight(.medium)
                        .font(.system(size: 14))
                        .foregroundColor(Color(colorActionButton))
                }
                .padding(.trailing, 16)
                
            }
            Divider()
                .padding(.top, 16)
                .frame(width: 350)
        }
        
        
    }
    
    struct ProposalButton_Previews: PreviewProvider {
        static var previews: some View {
            ProposalButton(
                iconCancel: Image.closeIcon(), titleCancelButton: "Remover dos favoritos", colorCancelButton: "Gray-0",
                iconAction: Image.moneyIcon(), titleActionButton: "Fazer proposta", colorActionButton: "Primary-1")
        }
    }
}
