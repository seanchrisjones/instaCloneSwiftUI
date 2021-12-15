//
//  LoginView.swift
//  InstagramSwiftUI
//
//  Created by Sean Jones on 12/15/21.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView{
            // for a navigation link to work it must be embedded in a navigation view
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack{
                    Image("instagramlogo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 220, height: 100)
                        .foregroundColor(.white)
                    
                    //email field
                    
                    //password field
                    
                    //forgot password
                    
                    //sign in
                    
                    // go to sign up
                        
                    Spacer()
                    
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
