//
//  ChartsPageViewController.swift
//  ChartsSample
//
//  Created by Viennarz Curtiz on 10/29/20.
//

import UIKit

class ChartsPageViewController: UIPageViewController {
  @IBOutlet weak var segmentedControl: UISegmentedControl!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let v1 = BarChartViewController(nibName: "BarChartViewController", bundle: nil)
    let v2 = BarChartViewController(nibName: "BarChartViewController", bundle: nil)
    
    setViewControllers([v1], direction: .forward, animated: true, completion: nil)
    
  }
  
  @IBAction func didTapSegmentedControl(_ sender: UISegmentedControl) {
    
    print(sender.selectedSegmentIndex)
  }
  
}



