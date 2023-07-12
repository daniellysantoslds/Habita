//
//  profileView.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 12/07/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        
        
        VStack(alignment: .leading ) {
            
            HStack {
                GeometryReader { geometry in
                    Text("Perfil")
                        .font(.system(size: 18))
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity)
                        .frame(height: UIScreen.main.bounds.height * 0.07)
                        .background(Color.white)
                }
                
            }
            
            
            VStack(alignment: .leading, spacing: 40) {
                HStack(spacing: 8) {
                    Image.calendarIcon()
                    Text("Visitas")
                        .font(.system(size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(Color("Black-1"))
                    
                }
                
                
                HStack(spacing: 8) {
                    Image.dollarIcon()
                    Text("Propostas")
                        .font(.system(size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(Color("Black-1"))
                    
                }
                
                HStack(spacing: 8) {
                    Image.favoriteIcon()
                    Text("Favoritos")
                        .font(.system(size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(Color("Black-1"))
                    
                }
                
                Text("Sair")
            }
            .padding(.leading, 16)
            .padding(.bottom, 465)
            
        }
        // .padding(.top)
        
        
        
    }
    
    
}





struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
