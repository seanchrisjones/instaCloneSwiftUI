//
//  SearchView.swift
//  InstagramSwiftUI
//
//  Created by Sean Jones on 12/7/21.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @State var inSearchMode = false
    
    var body: some View {
        ScrollView {
           
            
            //Search bar
            SearchBar(text: $searchText, isEditing: $inSearchMode)
                .padding()
            // grid view/ user
            ZStack{
                if inSearchMode {
                    UserListView()
                } else {
                    PostGridView()
                }
            }
            
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
