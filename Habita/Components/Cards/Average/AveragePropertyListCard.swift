//
//  AveragePropertyListCard.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 03/07/23.
//

import SwiftUI

struct AveragePropertyListCard: View {
    
    let rentDescription: String;
    let imageProperty: Image;
    let addressDescription: String;
    let spaceDescription: String;
    let roomDescription: String;
    let suitesDescription: String;
    
    init(rentDescription: String, imageProperty: Image, addressDescription: String, spaceDescription: String, roomDescription: String, suitesDescription: String) {
        self.rentDescription = rentDescription
        self.imageProperty = imageProperty
        self.addressDescription = addressDescription
        self.spaceDescription = spaceDescription
        self.roomDescription = roomDescription
        self.suitesDescription = suitesDescription
        
    }
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack(alignment: .leading, spacing: 0) {
                
                Image("imov2")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 0.71, height: UIScreen.main.bounds.height * 0.24)
                    .clipped()
                
                
                ZStack (alignment: .leading) {
                    
                    Rectangle()
                        .foregroundColor(Color("White-2"))
                        .frame(width: UIScreen.main.bounds.width * 0.71, height: UIScreen.main.bounds.height * 0.090)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        
                        Text("Total " + rentDescription)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(Color("Secondary-0"))
                        
                        
                        HStack(spacing: 16){
                            Text(spaceDescription)
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(Color("Gray-0"))
                            Text(roomDescription)
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(Color("Gray-0"))
                            Text(suitesDescription)
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(Color("Gray-0"))
                            
                        }
                        
                        Text(addressDescription)
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(Color("Black-1"))
                    }
                    .padding(.leading, 8)
                }
            }
            
        }
      
        
        
    }
    
    
}

struct AveragePropertyListCard_Previews: PreviewProvider {
    static var previews: some View {
        AveragePropertyListCard( rentDescription: "2.000", imageProperty: Image("imov2"), addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes")
    }
}


