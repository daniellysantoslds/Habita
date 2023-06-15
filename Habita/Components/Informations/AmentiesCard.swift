//
//  AmentiesView.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 15/06/23.
//

import SwiftUI

struct AmentiesCard: View {
    
    let roomIcon: Image;
    let bathroomIcon: Image;
    let spaceIcon: Image;
    let heightIcon: Image;
    let roomDescription: String;
    let bathroomDescription: String;
    let spaceDescription: String;
    let heightDescription: String
    
    
    
    init(roomIcon: Image, bathroomIcon: Image, spaceIcon: Image, heightIcon: Image, roomDescription: String, bathroomDescription: String, spaceDescription: String, heightDescription: String) {
        self.roomIcon = roomIcon
        self.bathroomIcon = bathroomIcon
        self.spaceIcon = spaceIcon
        self.heightIcon = heightIcon
        self.roomDescription = roomDescription
        self.bathroomDescription = bathroomDescription
        self.spaceDescription = spaceDescription
        self.heightDescription = heightDescription
    }
    
    var body: some View {
        
        HStack(spacing: 42) {
            
            VStack {
                roomIcon
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("Secondary-0"))
                
                Text(roomDescription)
                    .font(.system(size: 12, weight: .regular))
                    .padding(.top, 8)
            }
            
            VStack {
                bathroomIcon
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("Secondary-0"))
                
                Text(bathroomDescription)
                    .font(.system(size: 12, weight: .regular))
                    .padding(.top, 8)
            }
            
            VStack {
                spaceIcon
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("Secondary-0"))
                
                Text(spaceDescription)
                    .font(.system(size: 12, weight: .regular))
                    .padding(.top, 8)
            }
            
            VStack {
                heightIcon
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("Secondary-0"))
                
                Text(heightDescription)
                    .font(.system(size: 12, weight: .regular))
                    .padding(.top, 8)
            }
            
        }
        
        
    }
}

struct AmentiesCard_Previews: PreviewProvider {
    static var previews: some View {
        AmentiesCard(roomIcon: Image.bedIcon(), bathroomIcon: Image.bathhubIcon(), spaceIcon: Image.rulerIcon(), heightIcon: Image.triangleIcon(), roomDescription: "2 quartos", bathroomDescription: "1 banheiro", spaceDescription: "60m²", heightDescription: "3º andar")
    }
}
