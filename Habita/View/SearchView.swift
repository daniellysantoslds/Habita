//
//  SearchView.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 12/07/23.
//

import SwiftUI

struct SearchView: View {
    
    let addressDescription: String;
    let numberOfProperties: String;
    
    init(addressDescription: String, numberOfProperties: String) {
        self.addressDescription = addressDescription
        self.numberOfProperties = numberOfProperties
    }
    
    
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            SearchInput()
            
            VStack(alignment: .leading, spacing: 8) {
                Text(addressDescription)
                Text(numberOfProperties)
                  
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
            .padding(.top, 34)
            .padding(.bottom, 16)
           
              
        
                    
                ScrollView() {
                    VStack(alignment: .leading, spacing: 400) {


                        BigMainCard(imageProperty: "imov2", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")

                        BigMainCard(imageProperty: "imov2", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")
                        BigMainCard(imageProperty: "imov2", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")
                        BigMainCard(imageProperty: "imov2", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")
                        BigMainCard(imageProperty: "imov2", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")

                         //   .padding(.bottom, 91)



                       Spacer()
                    }
                  
                    .padding(.leading, 16)
                    
                    
                }
                .layoutPriority(1)
                .clipped()
            
            
            
            
        }
       
    
    }
        
        
    
    
    
    struct SearchView_Previews: PreviewProvider {
        static var previews: some View {
            SearchView(addressDescription: "Alugar em Graças, Recife - PE, Brasil", numberOfProperties: "20 imóveis encontrados na região")
        }
    }
}
