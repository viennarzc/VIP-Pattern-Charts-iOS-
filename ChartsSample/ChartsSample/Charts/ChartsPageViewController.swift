//
//  ChartsPageViewController.swift
//  ChartsSample
//
//  Created by Viennarz Curtiz on 10/29/20.
//

import UIKit

class ChartsPageViewController: UIPageViewController {
  @IBOutlet weak var segmentedControl: UISegmentedControl!
  
  private let v1 = BarChartViewController(nibName: "BarChartViewController", bundle: nil)
  private let v2 = BarChartTwoViewController(nibName: "BarChartTwoViewController", bundle: nil)
  
  private var controllers = [UIViewController]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    controllers = [
      v1,v2
    ]
    
    
    setViewControllers([controllers.first!], direction: .forward, animated: true, completion: nil)
    
  }
  
  func showChart(of number: Int) {
    setViewControllers([controllers[number]], direction: .forward, animated: false, completion: nil)
  }
  
}



