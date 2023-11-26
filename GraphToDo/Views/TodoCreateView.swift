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
            Section(header: Text("Info")) {
                TextField("Title", text: $todo.title)
                TextEditor(text: $todo.description)
                    .frame(minHeight: 100)
            }
            Section(header: Text("Graph")) {
                VStack {
                    Slider(
                        value: $todo.x,
                        in: -20...20
                    )
                    HStack {
                        Text("Priority")
                        Spacer()
                        Text("\(Int(todo.x))")
                    }
                }
                VStack {
                    Slider(
                        value: $todo.y,
                        in: -20...20
                    )
                    HStack {
                        Text("Important")
                        Spacer()
                        Text("\(Int(todo.y))")
                    }
                }
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
