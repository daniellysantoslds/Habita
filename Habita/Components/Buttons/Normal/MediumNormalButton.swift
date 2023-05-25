//
//  MediumNormalButton.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 24/05/23.
//

import SwiftUI

struct MediumNormalButton: View {
    
    let titleButton: String;
    @State private var IsHovered = false
    
    init(titleButton: String) {
        self.titleButton = titleButton
    }
    
    var body: some View {
        
        VStack {
            Spacer()
            
            GeometryReader { geometry in
                
                Button {
                    print("printou")
                } label: {
                    Text(titleButton)
                        .foregroundColor(Color("White-0"))
                        .fontWeight(.medium)
                        .font(.system(size: 15))
                        .frame(width: UIScreen.main.bounds.size.width * 0.43, height: UIScreen.main.bounds.size.height * 0.07 )
                        .background(IsHovered ? Color("Primary+1") : Color("Primary-0"))
                        .cornerRadius(4)
                        .onTapGesture {
                            withAnimation(.easeOut(duration: 0.2)) {
                                IsHovered.toggle()
                            }
                            
                        }
                }
                
            }
            
            Spacer()
            
        }
    }
    
    struct MediumNormalButton_Previews: PreviewProvider {
        static var previews: some View {
            MediumNormalButton(titleButton: "Médio")
        }
    }
}
