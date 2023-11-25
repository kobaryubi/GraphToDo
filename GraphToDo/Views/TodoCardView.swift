//
//  TodoCardView.swift
//  GraphToDo
//
//  Created by Masahiko Kobayashi on 2023/11/16.
//

import SwiftUI

struct TodoCardView: View {
    @EnvironmentObject var navigationModel: NavigationModel
    
    var body: some View {
        HStack(spacing: 8) {
            Button(action: {}) {
                Image(systemName: "circle")
                    .foregroundColor(.gray)
            }
            Text("ToDo Title")
                .font(.headline)
            Spacer()
        }
        .padding(.all, 8.0)
    }
}

#Preview {
    TodoCardView()
}
