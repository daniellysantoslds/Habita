//
//  SelectdImovelView.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 01/08/23.
//

import SwiftUI

struct SelectdImovelView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("oi")
            PropertyCode(codeID: "COD. 299")
            BigListOfValuesCard(rentText: "Aluguel", condominiumText: "Condomínio", iptuText: "IPTU", totalText: "Total", rentValue: "R$1.200", condominiumValue: "R$ 600", iptuValue: "R$ 300", totalValue: "R$ 2.100")
            
            AmentiesCard(roomIcon: Image.bedIcon(), bathroomIcon: Image.bathhubIcon(), spaceIcon: Image.helpIcon(), heightIcon: Image.triangleIcon(), roomDescription: "quartos", amountRoomDescription: "2", bathroomDescription: "banheiro", amountBathroomDescription: "1", spaceDescription: "m²", amountSpaceDescription: "60", heightDescription: "andar", amountHeightDescription: "3º")
            
        }
        .padding(.leading, 16)
        .padding(.trailing, 16)
        
    }
}

struct SelectdImovelView_Previews: PreviewProvider {
    static var previews: some View {
        SelectdImovelView()
    }
}
