//
//  SearchView.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 12/07/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        
        
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                BigMainCard(imageProperty: "imov2", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")
                
                Spacer(minLength: 340)
                
                BigMainCard(imageProperty: "imov1", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")
                
                Spacer(minLength: 340)
                
                BigMainCard(imageProperty: "imov3", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")
                
                Spacer(minLength: 340)
                
                BigMainCard(imageProperty: "imov4", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")
                
                Spacer(minLength: 340)
                
                BigMainCard(imageProperty: "imov5", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")
                
                Spacer(minLength: 340)
                
             
                
            }
            
        }
        //        .frame(maxHeight: .infinity, alignment: .bottom)
        .padding(.leading, 16)
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
