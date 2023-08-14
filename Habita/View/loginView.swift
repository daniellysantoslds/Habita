//
//  loginView.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 12/07/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        VStack {
            
            LargeInputTextField( label: "Nome compelto")
                .padding(.top, 234)
            
            LargeInputTextField( label: "Nome compelto")
                .padding(.top, 110)
            
            BigNormalButton(titleButton: "Entrar")
                .padding(.top, 2)
            
            
            Divider()
                .padding(.top, 16)
                .frame(width: UIScreen.main.bounds.width * 0.91)
                .padding(.top, -140)
            
            VStack(alignment: .center) {
                Text("Não tem uma conta? Clique aqui")
                    .underline()
                    .font(.system(size: 15))
                    .fontWeight(.regular)
                    .foregroundColor(Color("Black-1"))
                    .padding(.top, -100)
            }
            
            
        }
        .padding(.leading, 16)
        
    }
}

struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
