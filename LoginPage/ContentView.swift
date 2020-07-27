//
//  ContentView.swift
//  LoginPage
//
//  Created by Nick Nguyen on 7/26/20.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0,opacity: 1.0)


struct ContentView: View {
    var body: some View {
      VStack {
        WelcomeText()
        UserImage()
      }
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


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
