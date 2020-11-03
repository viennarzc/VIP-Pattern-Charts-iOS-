//
//  BarChartDisplayable.swift
//  ChartsSample
//
//  Created by Viennarz Curtiz on 11/3/20.
//

import Foundation
import Charts

protocol BarChartDisplayable {
  func initialSetup(for barChartView: BarChartView)

}

extension BarChartDisplayable {

  func initialSetup(for barChartView: BarChartView) {
    barChartView.drawValueAboveBarEnabled = false
    barChartView.drawGridBackgroundEnabled = false
    barChartView.chartDescription?.enabled = false
    barChartView.legend.enabled = false

    barChartView.xAxis.drawGridLinesEnabled = false
    barChartView.xAxis.drawAxisLineEnabled = false
    barChartView.xAxis.labelPosition = .bottom
    barChartView.xAxis.labelFont = .systemFont(ofSize: 10)
    barChartView.xAxis.granularity = 1
    barChartView.xAxis.labelCount = 7
    barChartView.xAxis.labelTextColor = .white

    barChartView.rightAxis.drawGridLinesEnabled = false
    barChartView.rightAxis.drawAxisLineEnabled = false
    barChartView.rightAxis.drawLabelsEnabled = false

    barChartView.leftAxis.drawAxisLineEnabled = false
    barChartView.leftAxis.drawGridLinesEnabled = false
    barChartView.leftAxis.labelTextColor = .white
    barChartView.leftAxis.labelFont = UIFont.systemFont(ofSize: 10, weight: .bold)
  }
}

