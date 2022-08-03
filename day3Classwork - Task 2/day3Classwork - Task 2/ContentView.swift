//
//  ContentView.swift
//  day3Classwork - Task 2
//
//  Created by Saleh Al Sedrah on 03/08/2022.
//

import SwiftUI



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
    
    @State var username = ""
    
   
    var body: some View {
        
        ZStack {
            
            Color.blue
                .ignoresSafeArea()
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            VStack {
                
                Text("Welcome back, \(username)!")
                    .padding().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                
                
                Image(chooseImage())
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
                
                Spacer()
                
                TextField("What is your username?", text: $username)
                    .padding(.leading, 40)
                    .font(.title)
                
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
