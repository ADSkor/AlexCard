//
//  InfoCapsule.swift
//  AlexCard
//
//  Created by Aleksandr Skorotkin on 13.01.2023.
//

import SwiftUI

struct InfoCapsule: View {
    
    let firstImageName: String
    let secondImageName: String?
    let text: String
    
    var body: some View {
        Capsule()
            .frame(height: 40)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: firstImageName)
                        .foregroundColor(.blue)
                    if let secondImageName {
                        Image(systemName: secondImageName)
                            .foregroundColor(.green)
                    }
                    Text(text)
                        .foregroundColor(.black)
                }
            )
    }
}

struct InfoCapsule_Previews: PreviewProvider {
    static var previews: some View {
        InfoCapsule(
            firstImageName: "phone.bubble.left",
            secondImageName: nil,
            text: "Hello")
    }
}
