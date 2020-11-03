//
//  BarChartViewController.swift
//  ChartsSample
//
//  Created by Viennarz Curtiz on 10/29/20.
//

import UIKit
import Charts

class BarChartViewController: UIViewController {
  @IBOutlet weak var barChartView: BarChartView!


  override func viewDidLoad() {
    super.viewDidLoad()

    setupChart()

  }

  fileprivate func setupChart() {
    let set = BarChartDataSet(entries: [
      BarChartDataEntry(x: 1, y: 100),
      BarChartDataEntry(x: 2, y: 200),
      BarChartDataEntry(x: 3, y: 150),
      BarChartDataEntry(x: 4, y: 100),
      BarChartDataEntry(x: 5, y: 350),
      BarChartDataEntry(x: 6, y: 300),
      BarChartDataEntry(x: 7, y: 200),
      BarChartDataEntry(x: 8, y: 250),
      BarChartDataEntry(x: 9, y: 100),
      BarChartDataEntry(x: 10, y: 400)
      ])

    set.drawValuesEnabled = false
    set.setColor(.systemOrange)
    
    barChartView.drawValueAboveBarEnabled = false
    barChartView.drawGridBackgroundEnabled = false
    barChartView.chartDescription?.enabled = false
    barChartView.legend.enabled = false

    barChartView.xAxis.drawGridLinesEnabled = false
    barChartView.xAxis.drawLabelsEnabled = false
    barChartView.xAxis.drawAxisLineEnabled = false

    barChartView.rightAxis.drawGridLinesEnabled = false
    barChartView.rightAxis.drawAxisLineEnabled = false
    barChartView.rightAxis.drawLabelsEnabled = false

    barChartView.leftAxis.drawAxisLineEnabled = false
    barChartView.leftAxis.drawGridLinesEnabled = false
    barChartView.leftAxis.drawLabelsEnabled = false
//    barChartView.backgroundColor = .systemGray6



    let data = BarChartData(dataSet: set)
    barChartView.data = data
  }
}
