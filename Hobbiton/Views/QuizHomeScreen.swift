//
//  QuizHomeScreen.swift
//  Hobbiton
//
//  Created by Grace couch on 03/07/2024.
//

import SwiftUI

struct QuizHomeScreen: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Test your Tolkien knowledge now:" )
                    .multilineTextAlignment(.center)
                    .font(.anironBold(28))
                    .background(Color("wood"))
                    .mask {
                        RoundedRectangle(cornerRadius: 10)
                            .blur(radius: 15)
                            .padding(5)
                    }
                Text("Choose your difficulty:")
                    .padding(10)
                    .background(Color("wood"))
                    .mask {
                        RoundedRectangle(cornerRadius: 10)
                            .blur(radius: 15)
                            .padding(5)
                    }
                LotrButton(title: "Easy", icon: "leaf.fill")
                LotrButton(title: "Medium", icon: "cloud.drizzle.fill")
                LotrButton(title: "Hard", icon: "mountain.2.fill")
                LotrButton(title: "Impossible", icon: "flame.fill")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .foregroundStyle(Color("trunk"))
            .font(.anironBold(20))
            .background(Color("forest"))
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: ProfileView()) {
                        Label("Profile", systemImage: "person.crop.circle")
                    }
                    .tint(Color("leaf"))
                }
            }
        }
    }
}


#Preview {
    QuizHomeScreen()
}






