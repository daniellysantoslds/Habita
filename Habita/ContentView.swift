//
//  ContentView.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 24/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MainProperty(imageProperty: Image("imov2"), addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000")
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView() 
    }
}
