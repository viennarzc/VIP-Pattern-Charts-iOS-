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

    let e = BarChartDataEntry(x: 2, y: 40)


    let set = BarChartDataSet(entries: [
      BarChartDataEntry(x: 1, y: 5),
      BarChartDataEntry(x: 2, y: 2),
      BarChartDataEntry(x: 3, y: 11),
      BarChartDataEntry(x: 4, y: 23),
      BarChartDataEntry(x: 5, y: 12),
      ])



    barChartView.fitBars = true
    barChartView.drawBarShadowEnabled = false
    barChartView.drawValueAboveBarEnabled = false
    barChartView.xAxis.axisLineColor = .clear
    barChartView.xAxis.gridColor = .clear
    barChartView.xAxis.labelTextColor = .clear
    barChartView.leftAxis.gridColor = .clear
    barChartView.leftAxis.labelTextColor = .clear
    barChartView.leftAxis.axisLineColor = .clear
    barChartView.leftAxis.zeroLineColor = .clear
    barChartView.drawGridBackgroundEnabled = false
    
    
    let data = BarChartData(dataSet: set)
    barChartView.data = data
    barChartView.layer.cornerRadius = 50
  }
}
