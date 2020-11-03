//
//  ViewController.swift
//  ChartsSample
//
//  Created by Viennarz Curtiz on 10/28/20.
//

import UIKit
import Charts

class ViewController: UIViewController {

  @IBOutlet weak var containerView: UIView!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.


    let childVC = ChartsContentViewController(nibName: "ChartsContentViewController", bundle: nil)

    addChild(childVC)
    //Or, you could add auto layout constraint instead of relying on AutoResizing contraints
    childVC.view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    childVC.view.frame = containerView.bounds

    containerView.layer.cornerRadius = 25
    containerView.addSubview(childVC.view)
    
    childVC.didMove(toParent: self)

  }



}

