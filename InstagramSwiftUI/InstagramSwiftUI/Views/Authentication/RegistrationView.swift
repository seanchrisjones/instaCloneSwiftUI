//
//  RegistrationView.swift
//  InstagramSwiftUI
//
//  Created by Sean Jones on 12/15/21.
//

import SwiftUI

struct RegistrationView: View {
    @State  private var email = ""
    @State  private var userName = ""
    @State  private var fullName = ""
    @State private var selectedImage: UIImage?
    @State var image: Image?
    @State private var password = ""
    @State var imagePickerPresented = false
    @Environment(\.presentationMode) var mode
    /*
     SwiftUI uses environment vairables to see if something has been presented or pushed onto the navigation stack etc.
     
     **/
    var body: some View {
        NavigationView{
            // for a navigation link to work it must be embedded in a navigation view
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    ZStack {
                        if let image = image {
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 140, height: 140)
                                .clipShape(Circle())
                                .padding(.top, 44)
                            
                        } else {
                            Button(action: {imagePickerPresented.toggle()}, label: {
                                Image(systemName:"plus.circle")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 140, height: 140)
                                    .foregroundColor(.white)
                            }).sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {ImagePicker(image: $selectedImage)
                            })
                        }
                    }
                    VStack(spacing: 20){
                        //email field
                        CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                        
                        CustomTextField(text: $email, placeholder: Text("Username"), imageName: "person")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                        
                        CustomTextField(text: $email, placeholder: Text("Full Name"), imageName: "person")
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
                    //sign in
                    Button(action: {}, label: {
                        Text("Sign Up")
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
                    NavigationLink(destination: RegistrationView(), label: {
                        
                    }).padding(.bottom, 16)
                    
                    Button(action: {mode.wrappedValue.dismiss()}, label: {
                        HStack {
                            Text("Already have an account?")
                                .font(.system(size: 14))
                            Text("Sign In")
                                .font(.system(size: 14, weight: .semibold))
                        }.foregroundColor(.white)
                    })
                }.padding()
            }
        }
    }
    
}



extension RegistrationView {
    func loadImage() {
        guard let selectedImage = selectedImage else {return}
        image = Image(uiImage: selectedImage)
    }
    
}


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
