//
//  BigPropertyVisits.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 16/06/23.
//

import SwiftUI

struct BigPropertyVisits: View {
    
    let imageProperty: Image;
    let addressDescription: String;
    let spaceDescription: String;
    let roomDescription: String;
    let suitesDescription: String;
    let rentDescription: String;
    let totalValueDescription: String;
    let dateVisit: String;
    let hourVisit: String;
    
    init(imageProperty: Image, addressDescription: String, spaceDescription: String, roomDescription: String, suitesDescription: String, rentDescription: String, totalValueDescription: String, dateVisit: String, hourVisit: String) {
        self.imageProperty = imageProperty
        self.addressDescription = addressDescription
        self.spaceDescription = spaceDescription
        self.roomDescription = roomDescription
        self.suitesDescription = suitesDescription
        self.rentDescription = rentDescription
        self.totalValueDescription = totalValueDescription
        self.dateVisit = dateVisit
        self.hourVisit = hourVisit
        
    }
    
    
    var body: some View {
        
        
        ZStack {
            
            
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 350, height: 330)
            
            
            VStack(alignment: .leading) {
                
                
                
                
                Text(dateVisit + " às " + hourVisit)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color("Black+1"))
                
                
                Image("imov2")
                    .resizable()
                    .frame(width: 350, height: 185)
                    .clipped()
                    .padding(.top, 8)
                
                    .overlay(
                        FavoriteButton()
                            .padding(.top, 16)
                            .padding(.trailing, 74)
                        , alignment: .topTrailing
                        
                    )
                
                    .overlay(
                        ShareButton()
                            .padding(.top, 16)
                            .padding(.trailing, 18)
                        , alignment: .topTrailing
                        
                    )
                
                
                Text(addressDescription)
                    .font(.system(size: 12, weight: .regular))
                    .padding(.top, 12)
                    .padding(.leading, 8)
                    .foregroundColor(Color("Black-1"))
                
                HStack(spacing: 16) {
                    Text(spaceDescription)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(Color("Primary-2"))
                    Text(roomDescription)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(Color("Primary-2"))
                    Text(suitesDescription)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(Color("Primary-2"))
                    
                }
                .padding(.top, 8)
                
                .padding(.leading, 8)
                
                
                Text(rentDescription)
                    .font(.system(size: 12, weight: .regular))
                    .padding(.top, 8)
                    .padding(.leading, 8)
                    .foregroundColor(Color("Black-1"))
                
                Text(totalValueDescription)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(Color("Secondary+1"))
                    .padding(.leading, 8)
                    .padding(.top, 8)
                    .padding(.bottom, 16)
                
            }
            
        }
    }
}

struct BigPropertyVisits_Previews: PreviewProvider {
    static var previews: some View {
        BigPropertyVisits(imageProperty: Image("imov2"), addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000,", dateVisit: "Quar., 20/04", hourVisit: "09:00")
    }
}

