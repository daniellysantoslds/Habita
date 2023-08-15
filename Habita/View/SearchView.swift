//
//  SearchView.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 12/07/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        
        VStack(spacing: 60){
            
            SearchInput()
            
            ScrollView() {
                
                VStack(alignment: .leading, spacing: 450) {
                    
                    BigMainCard(imageProperty: "imov2", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")
                    
                    BigMainCard(imageProperty: "imov2", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")
                    BigMainCard(imageProperty: "imov2", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")
                    BigMainCard(imageProperty: "imov2", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")
                    BigMainCard(imageProperty: "imov2", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")
                    
                    
                    
                }
                .padding(.leading, 16)
                
                
            }
            .layoutPriority(1)
            .clipped()
           
        }
        
      
    }
    
    
    
    
    struct SearchView_Previews: PreviewProvider {
        static var previews: some View {
            SearchView()
        }
    }
}
