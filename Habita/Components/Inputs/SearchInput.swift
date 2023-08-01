

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    var placeholder: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Image.searchIcon()
                    .foregroundColor(Color("Black-1"))
                TextField(placeholder, text: $searchText)
                    .foregroundColor(Color("Black-1"))
                //resolving the problem: lowercased and uppercased in textfield
                    .autocapitalization(.none)
            }
            .frame(width: UIScreen.main.bounds.width *  0.86, height: UIScreen.main.bounds.height * 0.05)
            .padding(10)
            .background(Color("Black-2"))
            .cornerRadius(0)
        }
        
        //.padding(.leading, 16)
    }
    
}

struct SearchInput: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            SearchBar(searchText: $searchText)
                .padding()
            
        }
    }
}



struct SearchInput_Previews: PreviewProvider {
    static var previews: some View {
        SearchInput()
    }
}
