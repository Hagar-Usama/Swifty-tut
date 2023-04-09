//
//  ContentView.swift
//  AngelaCard
//
//  Created by Hagar Osama on 10/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
          
            Color(.systemGreen)  .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("Angela")
                    .resizable().aspectRatio( contentMode: .fit)
                    .frame(width:150, height:150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Angela Yu")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(   .white)
                    .font(.system(size: 25))
                Divider()
                
                InfoView(text: "+44 123 456 789", imageName: "phone.fill")
                
                InfoView(text: "angila@gmail.com", imageName: "envelope.fill")
                
                   
                             
            }
            
            
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))

    }
}

