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
            VStack(alignment: .center, spacing: 0) {
                Text("Worthy of the fellowship? \n Test your knowledge now:" )
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                    .background(Color("forest"))
                    .font(.anironBold(20))
                VStack {
                    Text("Choose your difficulty:")
                        .padding(2)
                    NavigationLink(destination: EasyQuizView()) {
                        Label("Easy", systemImage: "leaf.fill")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Label("Medium", systemImage: "cloud.drizzle.fill")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Label("Hard", systemImage: "mountain.2.fill")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Label("Impossible", systemImage: "flame.fill")
                    }
                }
                .frame(maxWidth: .infinity)
                .foregroundStyle(Color("trunk"))
                .font(.anironBold(16))
                .background(Color("leaf"))
            }

        }
    }
}
#Preview {
    QuizHomeScreen()
}
