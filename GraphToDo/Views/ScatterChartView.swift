//
//  ScatterChartView.swift
//  GraphToDo
//
//  Created by Masahiko Kobayashi on 2023/11/12.
//

import SwiftUI
import Charts

struct ScatterChartView: View {
    var body: some View {
        Chart{
            PointMark(
                x: .value("Important", -20),
                y: .value("Priority", -20)
            )
            PointMark(
                x: .value("Important", -10),
                y: .value("Priority", -10)
            )
            PointMark(
                x: .value("Important", 0),
                y: .value("Priority", 0)
            )
            PointMark(
                x: .value("Important", 10),
                y: .value("Priority", 10)
            )
            PointMark(
                x: .value("Important", 20),
                y: .value("Priority", 20)
            )
        }
        .chartXAxis {
            AxisMarks(
                values: [0]
            ) {
                AxisGridLine()
            }
        }
        .chartYAxis {
            AxisMarks(
                values: [0]
            ) {
                AxisGridLine()
            }
        }
    }
}

#Preview {
    ScatterChartView()
}
