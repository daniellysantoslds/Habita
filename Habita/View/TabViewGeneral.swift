//
//  homeView.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 12/07/23.
//

import SwiftUI

struct tabView: View {
    
    init() {
        let unselecrColor = UIColor(Color("Gray-1"))
        UITabBar.appearance().unselectedItemTintColor = unselecrColor
    }
    
    var body: some View {
        TabView {
            SearchView()
                .tabItem() {
                    Image.searchIcon()
                    Text("Busca")
                }
            FavoritesView()
                .tabItem() {
                    Image.favoriteIcon()
                    Text("Favoritos")
                }
            
            VisitsView()
                .tabItem() {
                    Image.calendarIcon()
                    Text("Visitas")
                }
            
            ProposalView()
                .tabItem() {
                    Image.moneyIcon()
                    Text("Propostas")
                }
            
            ProfileView()
                .tabItem() {
                    Image.personIcon()
                    Text("Perfil")
                }
            
            
        }
        .accentColor(Color("Primary-0"))
        
        
        
    }
}

struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
