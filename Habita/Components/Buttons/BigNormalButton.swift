//
//  BigNormalButtonComponent.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 24/05/23.
//

import SwiftUI

struct BigNormalButton: View {
    
    let titleButton : String;
    
    
    init(titleButton: String) {
        self.titleButton = titleButton
    }
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            GeometryReader { geometry in
                
                Button {
                    
                } label: {
                    Text(titleButton)
                        .foregroundColor(Color("White-0"))
                        .fontWeight(.medium)
                        .font(.system(size: 15))
                        .frame(width: UIScreen.main.bounds.size.width * 0.91, height: UIScreen.main.bounds.size.height * 0.08)
                        .background(Color("Primary-0"))
                        .cornerRadius(4)
                }
                
            }
            
            Spacer()
        }
        
    }
}

struct BigNormalButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        BigNormalButton(titleButton: "Normal")
    }
}
