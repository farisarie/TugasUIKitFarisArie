//
//  MainTabController.swift
//  TugasUIKitFarisArie
//
//  Created by yoga arie on 02/08/22.
//

import UIKit

class MainTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    func setup(){
        tabBar.tintColor = UIColor(rgb: 0xE6E7F2)
        tabBar.unselectedItemTintColor = UIColor(rgb: 0x98A1BD)
        
        
        let sleepNC = BaseNavigationController(rootViewController: SleepViewController())
        sleepNC.tabBarItem.title = "Sleep"
        sleepNC.navigationBar.titleTextAttributes = [.font : UIFont(name: "HelveticaNeue-Bold", size: 24),
                                                     .foregroundColor : UIColor(rgb: 0xE6E7F2)]
        sleepNC.tabBarItem.image = UIImage(named: "sleep")
        sleepNC.tabBarItem.selectedImage = UIImage(named: "sleep!")?.withRenderingMode(.alwaysOriginal)
        sleepNC.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: 0, right: 0)
        
        let homeNC = BaseNavigationController(rootViewController: HomeViewController())
        homeNC.title = "Home"
        homeNC.tabBarItem.image = UIImage(named: "home")
        homeNC.tabBarItem.selectedImage = UIImage(named: "home!")?.withRenderingMode(.alwaysOriginal)
        homeNC.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: 0, right: 0)
        
        viewControllers = [homeNC, sleepNC]
        
    }


}

extension UIViewController {
    func showTabBarController() {
        let viewController = MainTabController()
        let window = UIApplication.shared.windows.first { $0.isKeyWindow }
        window?.rootViewController = viewController
    }
}
