//
//  listOfValues.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 30/05/23.
//

import SwiftUI

struct listOfValuesCard: View {
    
    let rentText: String;
    let condominiumText: String;
    let iptuText: String;
    let totalText: String;
    let rentValue: String;
    let condominiumValue: String;
    let iptuValue: String;
    let totalValue: String;
    
    init(rentText: String, condominiumText: String, iptuText: String, totalText: String, rentValue: String, condominiumValue: String, iptuValue: String, totalValue: String) {
        self.rentText = rentText
        self.condominiumText = condominiumText
        self.iptuText = iptuText
        self.totalText = totalText
        self.rentValue = rentValue
        self.condominiumValue = condominiumValue
        self.iptuValue = iptuValue
        self.totalValue = totalValue
    }
    
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                
                Text(rentText)
                    .font(.system(size: 12, weight: .regular))
                Spacer(minLength: 234)
                Text(rentValue)
                    .font(.system(size: 12, weight: .regular))
            }
            .padding(.bottom, 8)
            .padding(.top, 8)
            Divider()
            
            HStack {
                Text(condominiumText)
                    .font(.system(size: 12, weight: .regular))
                Spacer(minLength: 234)
                Text(condominiumValue)
                    .font(.system(size: 12, weight: .regular))
            }
            .padding(.bottom, 8)
            .padding(.top, 8)
            Divider()
            
            
            HStack {
                Text(iptuText)
                    .font(.system(size: 12, weight: .regular))
                Spacer(minLength: 234)
                Text(iptuValue)
                    .font(.system(size: 12, weight: .regular))
            }
            .padding(.bottom, 8)
            .padding(.top, 8)
            Divider()
            
            HStack {
                Text(totalText)
                    .font(.system(size: 12, weight: .bold))
                Spacer(minLength: 234)
                Text(totalValue)
                    .font(.system(size: 12, weight: .bold))
            }
            .padding(.bottom, 8)
            .padding(.top, 8)
            Divider()
            
        }
        
        
    }
}

struct listOfValuesCard_Previews: PreviewProvider {
    static var previews: some View {
        listOfValuesCard(rentText: "Aluguel", condominiumText: "Condomínio", iptuText: "IPTU", totalText: "Total", rentValue: "R$1.200", condominiumValue: "R$ 600", iptuValue: "R$ 300", totalValue: "R$ 2.100")
        
    }
}
