//
//  SmallNormalButton.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 24/05/23.
//

import SwiftUI

struct SmallNormalButton: View {
    
    let titleButton : String;
    @State private var isHovered = false
    
    
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
                        .frame(
                            width: UIScreen.main.bounds.width * 0.38,
                            height: UIScreen.main.bounds.height * 0.07 )
                        .background(isHovered ? Color("Primary+1"): Color("Primary-0"))
                        .cornerRadius(4)
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                isHovered.toggle()
                            }
                        }
                }
                
            }
            Spacer()
        }
        
        
    }
}

struct SmallNormalButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallNormalButton(titleButton: "pequeno")
    }
}
