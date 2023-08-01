

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    var placeholder: String = "Pesquisar"
    
    var body: some View {
        HStack {
            Image.searchIcon()
                .foregroundColor(Color("Black-1"))
            TextField(placeholder, text: $searchText)
                .foregroundColor(Color("Black-1"))
        }
        .padding(10)
        .background(Color("Black-2"))
        .cornerRadius(0)
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
