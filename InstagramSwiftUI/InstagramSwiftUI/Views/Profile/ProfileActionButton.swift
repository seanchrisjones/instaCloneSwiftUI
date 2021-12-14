//
//  ProfileActionButton.swift
//  InstagramSwiftUI
//
//  Created by Sean Jones on 12/14/21.
//

import SwiftUI

struct ProfileActionButton: View {
    var isCurrentUser = false
    var isFollowed = true
    var body: some View {
        if isCurrentUser {
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
        } else {
            HStack{
                Button(action: {}, label: {
                    Text(isFollowed ? "Following" : "Follow")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: 172, height: 32)
                        .foregroundColor(isFollowed ? .black : .white)
                        .background(isFollowed ? Color.white : Color.blue)
                        
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                })
                Button(action: {}, label: {
                    Text("Message")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: 172, height: 32)
                        .foregroundColor(.black)
                        
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                })
                
            }
            
        }
    }
}

struct ProfileActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButton()
    }
}
