//
//  TodoCreateView.swift
//  GraphToDo
//
//  Created by Masahiko Kobayashi on 2023/11/16.
//

import SwiftUI

struct TodoCreateView: View {
    @EnvironmentObject var navigationModel: NavigationModel
    @State private var todo: TodoInput = TodoInput()
    
    var body: some View {
        Form {
            Section {
                TextField("Title", text: $todo.title)
            }
            Section {
                Button("Submit") {
                    navigationModel.path.removeLast()
                }
            }
        }
        .navigationTitle("Create New ToDo")
    }
}

#Preview {
    TodoCreateView()
}
