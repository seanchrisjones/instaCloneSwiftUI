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
                UserStatView()
                UserStatView()
                UserStatView()
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
                Button(action: {}, label: {
                    Text("Edit Profile")
                        .font(.system(size: 15, weight: .semibold))
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                })
                Spacer()
            }.padding(.top)
            
            
        }
    }
}

struct UserStatView: View {
    var body: some View {
        VStack{
            Text("2")
                .font(.system(size: 15,weight: .semibold))
            Text("Posts")
                .font(.system(size: 15))
        }.frame(width: 80,  alignment: .center)
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
