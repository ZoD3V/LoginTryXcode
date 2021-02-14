//
//  ContentView.swift
//  LoginTry
//
//  Created by zero on 27/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                Welcome()
                Form()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Welcome: View{
    var body: some View{
        VStack{
            Text("Welcome Back")
                .font(.title)
                .fontWeight(.bold)
            Text("Sign to continue")
                .foregroundColor(.gray)
        }
    }
}

struct Form:View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View{
        VStack{
            Text("Email")
            TextField("username",text:$username)
            Text("Password")
            TextField("Password",text:$password)
            
            Text("Forgot Password")
            
            Button(action: {}, label: {
                Text("Login")
            })
            .padding()
            .background(Color.green)
            .cornerRadius(10)
            .foregroundColor(.white)
            
            HStack{
                Text("Dont have account?")
                Text("create new account")
                    .foregroundColor(Color.green)
            }
        }
    }
}
