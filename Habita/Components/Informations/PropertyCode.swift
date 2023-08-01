//
//  PropertyCode.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 16/06/23.
//

import SwiftUI

struct PropertyCode: View {
    
    let codeID: String
    
    init(codeID: String) {
        self.codeID = codeID
    }
    
    
    
    var body: some View {
        
        VStack {
            Text(codeID)
                .font(.system(size: 12, weight: .regular))
                .foregroundColor(Color("Primary-1"))
                .background(.white)
                .frame(width: 78, height: 25)
                .border(Color("White+1"))
                .cornerRadius(4)
        }
        .padding(.leading, 0)
       
    }
}

struct PropertyCode_Previews: PreviewProvider {
    static var previews: some View {
        PropertyCode(codeID: "COD. 299")
    }
}
