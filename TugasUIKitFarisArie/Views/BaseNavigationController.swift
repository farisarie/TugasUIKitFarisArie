//
//  BaseNavigationController.swift
//  TugasUIKitFarisArie
//
//  Created by yoga arie on 02/08/22.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
