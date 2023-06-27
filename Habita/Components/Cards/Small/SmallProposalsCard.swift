//
//  SmallProposalsCard.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 27/06/23.
//

import SwiftUI

struct SmallProposalsCard: View {
    
    let dateProposal: String;
    let imageProperty: Image;
    let codeID: String;
    let addressDescription: String;
    let spaceDescription: String;
    let roomDescription: String;
    let suitesDescription: String;
    
    init(dateProposal: String, imageProperty: Image, codeID: String, addressDescription: String, spaceDescription: String, roomDescription: String, suitesDescription: String) {
        self.dateProposal = dateProposal
        self.imageProperty = imageProperty
        self.codeID = codeID
        self.addressDescription = addressDescription
        self.spaceDescription = spaceDescription
        self.roomDescription = roomDescription
        self.suitesDescription = suitesDescription
    }
    
    var body: some View {
    GeometryReader { geometry in
       
            VStack(alignment: .leading, spacing: 8) {
                Text(dateProposal + " - Proposta Iniciada")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(Color("Black-0"))
                
                
                HStack(alignment: .top, spacing: 16) {
                    Image("imov2")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.43, height: UIScreen.main.bounds.height * 0.11)
                        .clipped()
                    
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(codeID)
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color("Primary-0"))
                        
                        
                        Text(addressDescription)
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(Color("Black-1"))
                        
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
                        
                        
                    }
                    
                    
                }
                
                Divider()
                    .padding(.top, 16)
                    .frame(width: UIScreen.main.bounds.width * 0.91)
                
            }
            .padding(.leading, 16)
            
            
        }
        
        
    }
    
    struct SmallProposalsCard_Previews: PreviewProvider {
        static var previews: some View {
            SmallProposalsCard(dateProposal: "Quar., 22/04", imageProperty: Image("imov2"), codeID: "Imóvel  Cod. 299", addressDescription: "Rua glicerio 478, Graças", spaceDescription: "270m", roomDescription: "2 quartos", suitesDescription: "2 suítes")
        }
    }
    
}
