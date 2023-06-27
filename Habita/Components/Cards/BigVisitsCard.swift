//
//  BigPropertyVisits.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 16/06/23.
//

import SwiftUI

struct BigVisitsCard: View {
    
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
        
        GeometryReader { geometry in
            
            ZStack {
             
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width * 0.91, height: UIScreen.main.bounds.height * 0.44)
                
                
                VStack(alignment: .leading) {
                    
                    Text(dateVisit + " às " + hourVisit)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(Color("Black+1"))
                        .padding(.leading, 8)
                    
                    Image("imov2")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.91, height: UIScreen.main.bounds.height * 0.27)
                        .clipped()
                        .padding(.leading, 8)
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
                    
                    HStack {
                        Text(addressDescription)
                            .font(.system(size: 12, weight: .regular))
                            .padding(.top, 12)
                            .padding(.leading, 8)
                            .foregroundColor(Color("Black-1"))
                        
                        PropertyCode(codeID: "COD. 299")
                        //                        .padding(.top, 12)
                            .padding(.leading, 115)
                        
                    }
                    
                    
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
                    
                    
                    ProposalButton(
                        iconCancel: Image.closeIcon(), titleCancelButton: "Remover dos favoritos", colorCancelButton: "Gray-0",
                        iconAction: Image.moneyIcon(), titleActionButton: "Fazer proposta", colorActionButton: "Primary-1")
                    
                }
                
            }
        }
    }
    
    struct BigVisitsCard_Previews: PreviewProvider {
        static var previews: some View {
            BigVisitsCard(imageProperty: Image("imov2"), addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes", rentDescription: "Aluguel R$ 1.500", totalValueDescription: "Total R$ 2.000,", dateVisit: "Quar., 20/04", hourVisit: "09:00")
        }
    }
    
}
