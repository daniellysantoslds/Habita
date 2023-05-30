//
//  radioButton.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 30/05/23.
//

import SwiftUI

struct radioButton: View {
    
    @State private var isButtonEnabled = true
    
    
    var body: some View {
        
        Button {
            isButtonEnabled.toggle()
        } label: {
            Text(isButtonEnabled ? Image.circleIcon() : Image.circleFillIcon())
        }
        
        Image.circleIcon()
        
        Text("Hello, World!")
    }
}

struct radioButton_Previews: PreviewProvider {
    static var previews: some View {
        radioButton()
    }
}
