//
//  BarWithLargueButtons.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 05/09/23.
//

import SwiftUI

struct BarWithMediumButtons: View {
    var body: some View {
        
        GeometryReader { geometry in
            HStack(spacing: 9) {
              
                MediumOutlineButton(titleButton: "String")
                MediumNormalButton(titleButton: "Médio")
               
            }
            .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.1)
            .background(.pink)
            
        }
        
       
        
       
    }
}

struct BarWithMediumButtons_Previews: PreviewProvider {
    static var previews: some View {
        BarWithMediumButtons()
    }
}
