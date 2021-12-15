//
//  LoginView.swift
//  InstagramSwiftUI
//
//  Created by Sean Jones on 12/15/21.
//

import SwiftUI

struct LoginView: View {
    @State  private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationView{
            // for a navigation link to work it must be embedded in a navigation view
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack{
                    Image("instagramlogo")
                        .renderingMode(.template)// allows to change the foreground color
                        .resizable()
                        .scaledToFill()
                        .frame(width: 220, height: 100)
                        .foregroundColor(.white)
                    
                    VStack(spacing: 20){
                        //email field
                        CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                        
                        //password field
                        CustomSecureField(text: $password, placeholder: Text("Password"))
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                    }
                    
                    //forgot password
                    HStack {
                        Spacer()
                        
                        Button(action: {}, label: { Text("Forgot Password?")
                            .font(.system(size: 13,weight:.semibold ))
                            .foregroundColor(.white)
                            .padding(.top)
                            .padding(.trailing, 28)
                            
                        })
                        
                    }
                    
                    //sign in
                    Button(action: {}, label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 50)
                        //you have set the background AFTER  you set the frame. you set the clipshape after the background
                        //order matters
                            .background(Color.purple)
                            .clipShape(Capsule())
                            .padding()
                    })
                    
                    // go to sign up
                    Spacer()
                    NavigationLink(destination: RegistrationView()
                                    .navigationBarHidden(true), label: {
                        HStack {
                            Text("Don't have an account?")
                                .font(.system(size: 14))
                            Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                        }.foregroundColor(.white)
                    }).padding(.bottom, 16)
        
                }
            }
            .padding(.top, -44)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
