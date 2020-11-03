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
    
    set.drawValuesEnabled = false

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
    barChartView.backgroundColor = .systemGray6
    
    
    
    let data = BarChartData(dataSet: set)
    barChartView.data = data
    barChartView.layer.cornerRadius = 50
  }
}
