//
//  ViewController.swift
//  CustomSideMenu#1
//
//  Created by Javier Calderon Jr. on 12/30/19.
//  Copyright © 2019 RockefellerFiles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let mainVC = UIViewController()
        mainVC.view.backgroundColor = .red

        let rootController = RootViewController(mainViewController: mainVC, topNavigationLeftImage: UIImage(named: "menu_icon"))
        let menuVC = MenuViewController()
        menuVC.view.backgroundColor = .blue

        let drawerVC = DrawerController(rootViewController: rootController, menuController: menuVC)

        self.addChild(drawerVC)
        view.addSubview(drawerVC.view)
        drawerVC.didMove(toParent: self)
    }
}

