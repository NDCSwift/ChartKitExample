//
    // Project: ChartKitExample
    //  File: DynamicBarChartView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    


import SwiftUI
import Charts

/// Displays a bar chart with dynamically updating data.
struct DynamicBarChartView: View {
    @State private var salesData: [(month: String, sales: Double)] = [
        ("Jan", 200),
        ("Feb", 450),
        ("Mar", 350),
        ("Apr", 500),
        ("May", 650),
        ("Jun", 700)
    ]

    var body: some View {
        VStack {
            Chart {
                ForEach(salesData, id: \.month) { data in
                    BarMark(
                        x: .value("Month", data.month),
                        y: .value("Sales", data.sales)
                    )
                    .foregroundStyle(.green)
                }
            }
            .frame(height: 300)
            .padding()

            Button("Randomize Data") {
                salesData = salesData.map { ($0.month, Double.random(in: 200...800)) }
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
    }
}

#Preview {
    DynamicBarChartView()
}
