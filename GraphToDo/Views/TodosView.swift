//
//  TodosView.swift
//  GraphToDo
//
//  Created by Masahiko Kobayashi on 2023/11/16.
//

import SwiftUI

struct TodosView: View {
    @EnvironmentObject var navigationModel: NavigationModel
    
    var body: some View {
        NavigationStack(path: $navigationModel.path) {
            VStack {
                ScatterChartView()
                List {
                    NavigationLink("name", value: "value")
                }
            }
            .navigationTitle("Graph ToDo")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(value: "create")  {
                        Image(systemName: "plus")
                            .accessibilityLabel("New ToDo")
                    }
                }
            }
            .navigationDestination(for: String.self) { data in
                switch data {
                case "value":
                    TodoCardView()
                case "create":
                    TodoCreateView()
                default:
                    TodoCardView()
                }
            }
        }
    }
}

#Preview {
    TodosView()
}
