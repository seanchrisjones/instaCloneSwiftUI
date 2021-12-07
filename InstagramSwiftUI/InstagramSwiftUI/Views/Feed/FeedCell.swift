//
//  FeedCell.swift
//  InstagramSwiftUI
//
//  Created by Sean Jones on 12/7/21.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading){
            //a Vertical Stack
            //user info
            HStack{
                // horizontal Stack
                Image("Goku")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("goku")
                    .font(.system(size: 14, weight: .semibold))
                
            }.padding([.leading,.bottom],8)
            
            //Post Image
            Image("Gohan")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
                
            
            //action Buttons
            HStack(spacing: 16){
                Button(action: {}, label:{
                    Image(systemName: "heart")
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
                Button(action: {}, label:{
                    Image(systemName: "bubble.right")
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
                Button(action: {}, label:{
                    Image(systemName: "paperplane")
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
            }.foregroundColor(.black)
                .padding(.leading,4)
            
            // caption
            Text("3 likes")
                .font(.system(size: 14, weight: .semibold))
                .padding(.leading, 8)
                .padding(.bottom, 4)
            HStack{
                Text("Goku").font(.system(size: 14, weight: .semibold)) + Text( " This is my son Gohan").font(.system(size: 15))
            }.padding(.horizontal,8)
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, 2)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
