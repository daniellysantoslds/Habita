//
//  MediumOutlineButton.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 25/05/23.
//

import SwiftUI

struct MediumOutlineButton: View {
    
    let titleButton : String;
    @State private var isHovered = false
    
    init(titleButton: String) {
        self.titleButton = titleButton
    }
    
    var body: some View {
        
        GeometryReader { geometry in
            
            Button {
                print("printou")
            } label: {
                Text(titleButton)
                    .fontWeight(.medium)
                    .font(.system(size: 15))
                    .foregroundColor(Color("Primary-0"))
                    .frame(width: UIScreen.main.bounds.width * 0.43, height: UIScreen.main.bounds.height * 0.07 )
                    .background(Color("White-0"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(isHovered ? Color("Primary+1") :
                                        Color("Primary-0")
                                    , lineWidth: 1))
                    .onTapGesture {
                        withAnimation(.easeOut(duration: 0.2)) {
                            isHovered.toggle()
                        }
                    }
            }
            
        }
        
    }
}

struct MediumOutlineButton_Previews: PreviewProvider {
    static var previews: some View {
        MediumOutlineButton(titleButton: "String")
    }
}
