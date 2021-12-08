//
//  UserListView.swift
//  InstagramSwiftUI
//
//  Created by Sean Jones on 12/8/21.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<20) { _ in
                    NavigationLink(
                    destination: ProfileView(),
                    label: {
                        UserCell()
                            .padding(.leading)
                    })
                        
                }
            }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
