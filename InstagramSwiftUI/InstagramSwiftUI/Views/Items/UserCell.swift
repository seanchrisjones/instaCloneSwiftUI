//
//  UserCell.swift
//  InstagramSwiftUI
//
//  Created by Sean Jones on 12/8/21.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            Image("Goku")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipped()
                .cornerRadius(24)
            //vstack
            VStack(alignment:.leading){
                Text("Goku")
                    .font(.system(size: 14, weight: .semibold))
                Text("Kakarot")
                    .font(.system(size: 14))
            }
            Spacer()

        }
                }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
