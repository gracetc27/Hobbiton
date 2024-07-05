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
                Text("Choose your difficulty:")
                    .padding(10)
                NavigationLink(destination: EasyQuizView()) {
                    Label("Easy", systemImage: "leaf.fill")
                }
                .padding(8)
                .background(Color("leaf"))
                .clipShape(.rect(cornerRadius: 10))
                NavigationLink(destination: EmptyView()) {
                    Label("Medium", systemImage: "cloud.drizzle.fill")
                }
                .padding(8)
                .background(Color("leaf"))
                .clipShape(.rect(cornerRadius: 10))
                NavigationLink(destination: EmptyView()) {
                    Label("Hard", systemImage: "mountain.2.fill")
                }
                .padding(8)
                .background(Color("leaf"))
                .clipShape(.rect(cornerRadius: 10))
                NavigationLink(destination: EmptyView()) {
                    Label("Impossible", systemImage: "flame.fill")
                        .padding(8)
                        .background(Color("leaf"))
                    .clipShape(.rect(cornerRadius: 10))                    }
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .foregroundStyle(Color("trunk"))
            .font(.anironBold(20))
            .background(Color("forest"))
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: ProfileView()) {
                        Label("", systemImage: "person.crop.circle")
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



