//
//  SelectImovelView.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 21/08/23.
//

import SwiftUI

struct SelectImovelView: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            
            VStack {
                
                //creating variables the texts 
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                BigListOfValuesCard(rentText: "Aluguel", condominiumText: "Condomínio", iptuText: "IPTU", totalText: "Total", rentValue: "R$1.200", condominiumValue: "R$ 600", iptuValue: "R$ 300", totalValue: "R$ 2.100")
                
                
                AmentiesCard(roomIcon: Image.bedIcon(), bathroomIcon: Image.bathhubIcon(), spaceIcon: Image.helpIcon(), heightIcon: Image.triangleIcon(), roomDescription: "quartos", amountRoomDescription: "2", bathroomDescription: "banheiro", amountBathroomDescription: "1", spaceDescription: "m²", amountSpaceDescription: "60", heightDescription: "andar", amountHeightDescription: "3º")
                
                
                
                
            }
        }
        
    }
}

struct SelectImovelView_Previews: PreviewProvider {
    static var previews: some View {
        SelectImovelView()
    }
}
