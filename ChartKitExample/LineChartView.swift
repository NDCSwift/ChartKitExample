//
    // Project: ChartKitExample
    //  File: LineChartView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    


import SwiftUI
import Charts

/// Displays a line chart with sales trends.
struct LineChartView: View {
    let salesData: [(month: String, sales: Double)] = [
        ("Jan", 200),
        ("Feb", 450),
        ("Mar", 350),
        ("Apr", 500),
        ("May", 650),
        ("Jun", 700)
    ]

    var body: some View {
        Chart {
            ForEach(salesData, id: \.month) { data in
                LineMark(
                    x: .value("Month", data.month),
                    y: .value("Sales", data.sales)
                )
                .foregroundStyle(.red) //  Customize Line Color
                .interpolationMethod(.catmullRom) //  Smooth Line
            }
        }
        .frame(height: 300)
        .padding()
    }
}

#Preview{
    LineChartView()
}
