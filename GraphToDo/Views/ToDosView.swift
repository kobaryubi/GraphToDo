//
//  ToDosView.swift
//  GraphToDo
//
//  Created by Masahiko Kobayashi on 2023/11/16.
//

import SwiftUI

struct ToDosView: View {
    var body: some View {
        VStack {
            ScatterChartView()
            List {
                ToDoCardView()
                ToDoCardView()
                ToDoCardView()
            }
        }
    }
}

#Preview {
    ToDosView()
}
