//
//  SelectdImovelView.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 01/08/23.
//

import SwiftUI

struct SelectdImovelView: View {
    
    
    let immobileDescription: String;
    let schoolsDescription: String;
    let hospitalsDescription: String;
    let parksDescription: String;
    
    
    
    init(immobileDescription: String, schoolsDescription: String, hospitalsDescription: String, parksDescription: String) {
        self.immobileDescription = immobileDescription
        self.schoolsDescription = schoolsDescription
        self.hospitalsDescription = hospitalsDescription
        self.parksDescription = parksDescription
        
    }
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                Text("oi")
                PropertyCode(codeID: "COD. 299")
                BigListOfValuesCard(rentText: "Aluguel", condominiumText: "Condomínio", iptuText: "IPTU", totalText: "Total", rentValue: "R$1.200", condominiumValue: "R$ 600", iptuValue: "R$ 300", totalValue: "R$ 2.100")
                
                AmentiesCard(roomIcon: Image.bedIcon(), bathroomIcon: Image.bathhubIcon(), spaceIcon: Image.helpIcon(), heightIcon: Image.triangleIcon(), roomDescription: "quartos", amountRoomDescription: "2", bathroomDescription: "banheiro", amountBathroomDescription: "1", spaceDescription: "m²", amountSpaceDescription: "60", heightDescription: "andar", amountHeightDescription: "3º")
                
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Descrição")
                        .font(.system(size: 15, weight: .medium))
                    Text(immobileDescription)
                        .font(.system(size: 12, weight: .regular))
                }
                Divider()
                
                VStack(alignment: .leading, spacing: 16) {
                    
                    
                    Text("Proximidades")
                        .font(.system(size: 15, weight: .medium))
                    
                    
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Escolas ou colégios")
                            .font(.system(size: 12, weight: .medium))
                        
                        Text(immobileDescription)
                            .font(.system(size: 12, weight: .regular))
                        
                    }
                    
                    
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Hospitais")
                            .font(.system(size: 12, weight: .medium))
                        
                        Text(hospitalsDescription)
                            .font(.system(size: 12, weight: .regular))
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Parques ou áreas verdes")
                            .font(.system(size: 12, weight: .medium))
                        Text(parksDescription)
                            .font(.system(size: 12, weight: .regular))
                        
                    }
                    
                }
                
                
                
                
                
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
        }
        
    }
}

struct SelectdImovelView_Previews: PreviewProvider {
    static var previews: some View {
        SelectdImovelView(immobileDescription: "Aconchegante apartamento para alugar com 2 quartos e 1 banheiro no total. Este apartamento fica situado no 3º andar.  É bem localizado, próximo a pontos de interesse das Graças.",
                          schoolsDescription: "Colégio Poliedro, Escola Monteiro Lyra e Escola Arco-Iris da Várzea ficam nessa região.",
                          hospitalsDescription: "Hospital Santa Terezinha fica nessa região.",
                          parksDescription: "Parque Robert Kennedy e Praça Aleixo de Oliveira ficam nessa região.")
    }
}
