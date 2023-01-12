//
//  ContentView.swift
//  AlexCard
//
//  Created by Aleksandr Skorotkin on 12.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 0.90, green: 0.49, blue: 0.13, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Alex")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 180, height: 180)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                        .stroke(Color(.white), lineWidth: 5)
                    )
                Text("Alexander Atum")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(
                        .white
                    )
                Text("iOS Developer")
                    .foregroundColor(
                        .white
                    )
                    .font(.system(size: 28))
                Divider()
                InfoCapsule(
                    firstImageName: "paperplane.circle.fill",
                    secondImageName: "phone.bubble.left",
                    text: "+7(916)925-70-38"
                )
                Divider()
                InfoCapsule(
                    firstImageName: "envelope",
                    secondImageName: nil,
                    text: "ADSkorotkin@gmail.com"
                )
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
