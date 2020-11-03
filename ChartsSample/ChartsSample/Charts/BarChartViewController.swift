//
//  BarChartViewController.swift
//  ChartsSample
//
//  Created by Viennarz Curtiz on 10/29/20.
//

import UIKit
import Charts

class BarChartViewController: UIViewController, BarChartDisplayable {

  @IBOutlet weak var barChartView: BarChartView!

  override func viewDidLoad() {
    super.viewDidLoad()

    initialSetup(for: barChartView)
    
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

    let barLabels = ["Jan", "Feb", "Mar",
      "Apr", "May", "Jun",
      "Jul", "Aug", "Sep",
      "Oct", "Nov", "Dec"]

    barChartView.xAxis.valueFormatter = XAxisLabelFormatter(barLabels: barLabels)


    set.drawValuesEnabled = false
    set.setColor(.systemOrange)
    let data = BarChartData(dataSet: set)
    data.barWidth = 0.4
    barChartView.data = data
  }
  
}

