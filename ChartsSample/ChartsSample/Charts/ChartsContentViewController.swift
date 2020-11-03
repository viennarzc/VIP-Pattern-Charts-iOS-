//
//  ChartsContentViewController.swift
//  ChartsSample
//
//  Created by Viennarz Curtiz on 11/3/20.
//

import UIKit

class ChartsContentViewController: UIViewController {
  @IBOutlet weak var containerView: UIView!
  override func viewDidLoad() {
    super.viewDidLoad()

    let childVC = ChartsPageViewController(nibName: "ChartsPageViewController", bundle: nil)

    addChild(childVC)
    //Or, you could add auto layout constraint instead of relying on AutoResizing contraints
    childVC.view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    childVC.view.frame = containerView.bounds
    containerView.addSubview(childVC.view)
    childVC.didMove(toParent: self)


  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)


  }

}
