//
//  InfoView.swift
//  AngelaCard
//
//  Created by Hagar Osama on 14/08/2022.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50).overlay(
                HStack{
                    Image(systemName: imageName).foregroundColor(.green)
                    
                    Text(text).bold()
                }
                
                
            )
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+44 123 456 789", imageName: "phone.fill" )
            .previewLayout(.sizeThatFits)
    }
}
