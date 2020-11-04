//
//  ChartsContentViewController.swift
//  ChartsSample
//
//  Created by Viennarz Curtiz on 11/3/20.
//

import UIKit

class ChartsContentViewController: UIViewController {
  @IBOutlet weak var containerView: UIView!
  @IBOutlet weak var segmentedControl: UISegmentedControl!
  
  private let childVC = ChartsPageViewController(nibName: "ChartsPageViewController", bundle: nil)
  
  override func viewDidLoad() {
    super.viewDidLoad()

    

    addChild(childVC)
    //Or, you could add auto layout constraint instead of relying on AutoResizing contraints
    childVC.view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    childVC.view.frame = containerView.bounds
    containerView.addSubview(childVC.view)
    childVC.didMove(toParent: self)
    view.layer.cornerRadius = 25
    
    segmentedControl.tintColor = .white
    
    let font = UIFont.systemFont(ofSize: 18, weight: .medium)
    
    let attributes: [NSAttributedString.Key: Any] = [
        .font: font,
        .foregroundColor: UIColor.white,
    ]
    
    segmentedControl.setTitleTextAttributes(attributes, for: .normal)

  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
  }
  
  @IBAction func didTapSegmentedControl(_ sender: UISegmentedControl) {
    childVC.showChart(of: sender.selectedSegmentIndex)
  }
  
}
