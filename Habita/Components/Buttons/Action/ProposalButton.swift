//
//  ProposalButton.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 16/06/23.
//

import SwiftUI

struct ProposalButton: View {
    var body: some View {
        
        VStack {
            Divider()
            .padding(.bottom, 16)
            HStack(spacing: 63) {
                
              
                ActionAllButton(
                    iconButton: Image.closeIcon(),
                    titleButton: "Remover dos favoritos",
                    colorButton: "Gray-0")
                .padding(.leading, 16)
                
                ActionAllButton(
                    iconButton: Image.moneyIcon(),
                    titleButton: "Fazer proposta",
                    colorButton: "Primary-0")
                .padding(.trailing, 16)
            }
            .padding(.bottom, 16)
            Divider()
        }
      
    }
}

struct ProposalButton_Previews: PreviewProvider {
    static var previews: some View {
        ProposalButton()
    }
}
