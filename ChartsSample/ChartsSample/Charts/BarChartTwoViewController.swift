//
//  LeadVehiclesChartViewController.swift
//  ChartsSample
//
//  Created by Viennarz Curtiz on 11/4/20.
//

import Foundation
import Charts

class BarChartTwoViewController: UIViewController, BarChartDisplayable {
  @IBOutlet weak var barChartView: BarChartView!
  @IBOutlet weak var collectionView: UICollectionView!
  
  private var set: BarChartDataSet?
  
  private var items: [CustomChartItem] = [
    CustomChartItem(color: .systemYellow, name: "Ford"),
    CustomChartItem(color: .systemGray4, name: "Tesla"),
    CustomChartItem(color: .systemTeal, name: "Toyota"),
    CustomChartItem(color: .systemPink, name: "Mitsubishi"),
    CustomChartItem(color: .systemIndigo, name: "Kawasaki"),
  ]
  
  var barWidth: Double = 0.3
  
  override func viewDidLoad() {
    super.viewDidLoad()
    initialSetup(for: barChartView)
    
    setupChartData()
    setupCollectionView()
    
  }
  
  func setupCollectionView() {
    collectionView.register(UINib(nibName: "GenericItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionCell")
    
    collectionView.delegate = self
    collectionView.dataSource = self
  }
  
  func setupChartData() {
    self.set = BarChartDataSet(entries: [
      BarChartDataEntry(x: 1, y: 100),
      BarChartDataEntry(x: 2, y: 350),
      BarChartDataEntry(x: 3, y: 150),
      BarChartDataEntry(x: 4, y: 100),
      BarChartDataEntry(x: 5, y: 400),
      
      ])
    
    guard let set = self.set else { return }

    set.drawValuesEnabled = false
    barChartView.xAxis.drawLabelsEnabled = false
    
    
    
    set.setColors(
      items[0].color,
      items[1].color,
      items[2].color,
      items[3].color,
      items[4].color)
    let data = BarChartData(dataSet: set)
    data.barWidth = barWidth
    barChartView.data = data
  }
  
  
  
}


extension BarChartTwoViewController: UICollectionViewDelegate {
  
}

extension BarChartTwoViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    guard let set = self.set else { return 0 }
    
    
    return set.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! GenericItemCollectionViewCell
    
    cell.nameLabel.text = items[indexPath.row].name
    cell.indicatorView.backgroundColor = items[indexPath.row].color
    return cell
    
  }

}

struct CustomChartItem {
  var color: UIColor
  var name: String
}
