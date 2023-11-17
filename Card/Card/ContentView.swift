//
//  ContentView.swift
//  Card
//
//  Created by Виктория Серикова on 17.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52 ).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("putinCard").resizable().aspectRatio(contentMode: .fit).frame(width: 300,height: 179).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: FillStyle()).overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Vladimir Putin").font(Font.custom("Pacifico-Regular", size: 30)).bold().foregroundColor(.white)
                Text("The President").foregroundColor(.white).font(.system(size: 25))
                Divider()
                InfoView(text: "+66666666", imageName: "phone.fill")
                InfoView(text: "Vl.Putin@Kreml.ru", imageName: "envelope.fill")
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color(.white))
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(.green)
                Text(text).foregroundColor(.black)
            }).padding(.all)
    }
}
