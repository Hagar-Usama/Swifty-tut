//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Hagar Osama on 14/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber  = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
       
        ZStack{
            Image("background").resizable()
                .ignoresSafeArea()
            VStack {
                Image("diceeLogo")
                
                Spacer()
                
                HStack {
                    DiceView(n:leftDiceNumber)
                    DiceView(n:rightDiceNumber)
                
                }.padding(.horizontal)
                Spacer()
                Button {
                    print("Button tapped!")
                    leftDiceNumber = Int.random(in: 1...6)
                    
                    rightDiceNumber = Int.random(in: 1...6)
                } label: {
                    Text("Roll")
                        .font(.system(size:50))
                        .bold()
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let n:Int
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(1, contentMode: .fit
        ).padding()
    }
        
}
