//
//  ToDosView.swift
//  GraphToDo
//
//  Created by Masahiko Kobayashi on 2023/11/16.
//

import SwiftUI

struct ToDosView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScatterChartView()
                List {
                    ToDoCardView()
                    ToDoCardView()
                    ToDoCardView()
                }
            }
            .navigationTitle("Graph ToDo")
            .toolbar{
                Button(action: {}) {
                    Image(systemName: "plus")
                }.accessibilityLabel("New ToDo")
            }
        }
    }
}

#Preview {
    ToDosView()
}
