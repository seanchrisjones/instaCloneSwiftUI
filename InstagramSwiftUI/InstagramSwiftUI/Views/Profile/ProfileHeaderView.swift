//
//  ProfileHeaderView.swift
//  InstagramSwiftUI
//
//  Created by Sean Jones on 12/8/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Image("trunks")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)
                
                Spacer()
                
                HStack(alignment: .center, spacing: 16){
                    UserStatView(value: 1, title: "Post")
                    UserStatView(value: 2, title: "Followers")
                    UserStatView(value: 4, title: "Following")
                }.padding(.trailing, 32)
            }
            
            Text("Trunks Briefs")
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])
            
            Text("Son of Vegeta | Defender of Earth")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top, 1)
            
            HStack {
                Spacer()
                ProfileActionButton()
                Spacer()
            }.padding(.top)
            
            
        }
    }
}



struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
