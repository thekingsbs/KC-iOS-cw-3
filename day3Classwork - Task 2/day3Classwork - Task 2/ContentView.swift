//
//  ContentView.swift
//  day3Classwork - Task 2
//
//  Created by Saleh Al Sedrah on 03/08/2022.
//

import SwiftUI

//When testing it, put the name "Saleh" for the username. Trust me :)

struct ContentView: View {
    
    func chooseImage() -> String {
        var image:String
        
        if username == "Saleh" {
          
            image = "saleh"
            
        } else {
            image = "avatar"
            
        }
        return image
        
    }
    
    func title() -> String {
        var heading:String
        
        if username == "" {
            heading = "What is your username?"
        } else {
            heading = "Welcome back, \(username)!"
        }
        
        return heading
        
    }
    
    @State var username = ""
    
   
    var body: some View {
        
        ZStack {
            
            Image("background1")
                .resizable()
                .ignoresSafeArea()
                
            
            VStack {
                
                Text(title())
                    .padding().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
        
                
                Image(chooseImage())
                    .resizable()
                    .frame(width: 300.0, height: 300.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
                
                Spacer()
                
                TextField("What is your username?", text: $username)
                    .padding(.leading, 40)
                    .font(.title)
                    .background(Color.white)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    
                
                Spacer()
            
            }
        }
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
