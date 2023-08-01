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
    let amountRoomDescription: String;
    let bathroomDescription: String;
    let amountBathroomDescription: String;
    let spaceDescription: String;
    let amountSpaceDescription: String;
    let heightDescription: String
    let amountHeightDescription: String;
    
    
    
    
    init(roomIcon: Image, bathroomIcon: Image, spaceIcon: Image, heightIcon: Image, roomDescription: String,
         amountRoomDescription: String, bathroomDescription: String, amountBathroomDescription: String, spaceDescription: String, amountSpaceDescription: String, heightDescription: String, amountHeightDescription: String) {
        self.roomIcon = roomIcon
        self.bathroomIcon = bathroomIcon
        self.spaceIcon = spaceIcon
        self.heightIcon = heightIcon
        self.roomDescription = roomDescription
        self.amountRoomDescription = amountRoomDescription
        self.bathroomDescription = bathroomDescription
        self.amountBathroomDescription = amountBathroomDescription
        self.spaceDescription = spaceDescription
        self.amountSpaceDescription = amountSpaceDescription
        self.heightDescription = heightDescription
        self.amountHeightDescription = amountHeightDescription
    }
    
    var body: some View {
        
        HStack {
            
            VStack {
                roomIcon
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("Secondary-0"))
                
                HStack(spacing: 4) {
                    Text(amountRoomDescription)
                        .font(.system(size: 12, weight: .regular))
                        .padding(.top, 8)
                    Text(roomDescription)
                        .font(.system(size: 12, weight: .regular))
                        .padding(.top, 8)
                }
            }
            
            Spacer()
            
            
            
            VStack {
                bathroomIcon
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("Secondary-0"))
                
                HStack(spacing: 4) {
                    Text(amountBathroomDescription)
                        .font(.system(size: 12, weight: .regular))
                        .padding(.top, 8)
                    
                    Text(bathroomDescription)
                        .font(.system(size: 12, weight: .regular))
                        .padding(.top, 8)
                }
            }
            
            Spacer()
            
            VStack {
                spaceIcon
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("Secondary-0"))
                    .padding(.top, -0)
                
                HStack(spacing: 4) {
                    Text(amountSpaceDescription)
                        .font(.system(size: 12, weight: .regular))
                        .padding(.top, 8)
                    Text(spaceDescription)
                        .font(.system(size: 12, weight: .regular))
                        .padding(.top, 8)
                }
            }
            
            Spacer()
            
            VStack {
                heightIcon
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color("Secondary-0"))
                    .padding(.top, -0)
                
                HStack(spacing: 4) {
                    Text(amountHeightDescription)
                        .font(.system(size: 12, weight: .regular))
                        .padding(.top, 8)
                    Text(heightDescription)
                        .font(.system(size: 12, weight: .regular))
                        .padding(.top, 8)
                }
                
            }
            
            
            
        }
//        .padding(.leading, 16)
//        .padding(.trailing, 16)
        
    }
    
    struct AmentiesCard_Previews: PreviewProvider {
        static var previews: some View {
            AmentiesCard(roomIcon: Image.bedIcon(), bathroomIcon: Image.bathhubIcon(), spaceIcon: Image.helpIcon(), heightIcon: Image.triangleIcon(), roomDescription: "quartos", amountRoomDescription: "2", bathroomDescription: "banheiro", amountBathroomDescription: "1", spaceDescription: "m²", amountSpaceDescription: "60", heightDescription: "andar", amountHeightDescription: "3º")
        }
    }
    
}
