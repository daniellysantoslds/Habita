//
//  CheckBoxButton.swift
//  Habita
//
//  Created by Danielly Santos Lopes da Silva on 29/05/23.
//

import SwiftUI

struct CheckBoxButton: View {
    
    @State private var isButtonEnabled = true
    
    var body: some View {

        Button {
            isButtonEnabled.toggle()
        } label: {
            Text(isButtonEnabled ? Image.checkIcon() : Image.checkFilllIcon())
        }

        
        
    }
}

struct CheckBoxButton_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxButton()
    }
}
