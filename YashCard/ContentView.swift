//
//  ContentView.swift
//  YashCard
//
//  Created by Yash Mundhada on 31/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("yash")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 6)
                    )
                
                Text("Yash Mundhada")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .padding()
                
                Text("IOS developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                    
                InfoView(text: "ymundhada12@gmail.com", imageName: "envelope.fill")
                InfoView(text: "+917038612152", imageName: "phone.fill")
    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50.0)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
                    .foregroundColor(.black)
            })
        
            .padding(.all)
    }
}
