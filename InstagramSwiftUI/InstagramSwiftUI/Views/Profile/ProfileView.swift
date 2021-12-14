//
//  ProfileView.swift
//  InstagramSwiftUI
//
//  Created by Sean Jones on 12/7/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 32){
            ProfileHeaderView()
            PostGridView()
        }.padding(.top)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
