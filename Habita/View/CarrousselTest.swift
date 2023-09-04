//
//  CarrousselTest.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 04/09/23.
//

import SwiftUI

struct CarrousselTest: View {
    
    let imageNames = ["imov1", "imov2", "imov3"]

    
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {
                        ForEach(imageNames, id: \.self) { imageName in
                            Image(imageName)
                                .foregroundStyle(.white)
                                .font(.largeTitle)
                                .frame(width: UIScreen.main.bounds.width * 0.99, height: UIScreen.main.bounds.height * 0.5)
                            
                        }
                    }
                    
                }
                
                
            }
        }
    }
    
    struct CarrousselTest_Previews: PreviewProvider {
        static var previews: some View {
            CarrousselTest()
        }
    }
}
