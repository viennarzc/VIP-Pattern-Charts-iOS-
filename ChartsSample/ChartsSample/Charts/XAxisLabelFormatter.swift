//
//  XAxisLabelFormatter.swift
//  ChartsSample
//
//  Created by Viennarz Curtiz on 11/3/20.
//

import Foundation
import Charts

class XAxisLabelFormatter: IAxisValueFormatter {

  private var barLabels: [String]

  init(barLabels: [String]) {
    self.barLabels = barLabels
  }

  func stringForValue(_ value: Double, axis: AxisBase?) -> String {
    if barLabels.isEmpty {
      return ""
    }
    
    return barLabels[Int(value)]
  }

}


