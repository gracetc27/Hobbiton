//
//  LotrButton.swift
//  Hobbiton
//
//  Created by Grace couch on 05/07/2024.
//

import Foundation
import SwiftUI


struct LotrButton: View {
    let title: String
    let icon: String
    var body: some View {

        NavigationLink(destination: EmptyView()) {
            Label(title, systemImage: icon)
                .padding(8)
                .background(Color("leaf"))
                .clipShape(.rect(cornerRadius: 10))
        }
    }
}
