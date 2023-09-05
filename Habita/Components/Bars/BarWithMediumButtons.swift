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
            HStack(alignment: .center) {
              
                MediumOutlineButton(titleButton: "String")
                MediumNormalButton(titleButton: "Médio")
             
            }
            .padding(.leading, 12)
            .padding(.trailing, 12)
            .padding(.top, 12)
            .padding(.bottom, 12)
            
            .frame(width: geometry.size.width * 1, height: geometry.size.height * 0.2)
            .background(.pink)
            
           
        }
        
        
   
        
       
    }
}

struct BarWithMediumButtons_Previews: PreviewProvider {
    static var previews: some View {
        BarWithMediumButtons()
    }
}
