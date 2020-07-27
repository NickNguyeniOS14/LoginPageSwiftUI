//
//  ContentView.swift
//  LoginPage
//
//  Created by Nick Nguyen on 7/26/20.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0,opacity: 1.0)


struct ContentView: View {
  
  @State var username = ""
  @State var password = ""
    var body: some View {
      VStack {
        WelcomeText()
        UserImage()
        TextField("Username",text:$username)
          .padding()
          .background(lightGreyColor)
          .cornerRadius(5.0)
          .padding(.bottom, 20)
        // “ The SecureField needs the same arguments as a TextField. Therefore, we create another @State property called password and bind it to the SecureField”
        
        SecureField("Password",text:$password)
          .padding()
          .background(lightGreyColor)
          .cornerRadius(5.0)
          .padding(.bottom, 20)
        Button(action: {
          print("Button tapped")
        }, label: {
          LoginButtonContent()
        })
        
      }
      .padding()
    }
}



struct WelcomeText: View {
  var body: some View {
    Text("Welcome!")
      .font(.largeTitle)
      .fontWeight(.semibold)
      .padding(.bottom, 20)
  }
}

struct UserImage: View {
  var body: some View {
    Image("userImage")
      .resizable()
      .aspectRatio(contentMode: .fill)
      .frame(width:150,height: 150)
      .clipped()
      .cornerRadius(150)
      .padding(.bottom, 75)
  }
}


struct LoginButtonContent: View {
  var body: some View {
    Text("LOGIN")
      .font(.headline)
      .foregroundColor(.white)
      .padding()
      .frame(width:220,height:60)
      .background(Color.green)
      .cornerRadius(15.0)
  }
}







struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
