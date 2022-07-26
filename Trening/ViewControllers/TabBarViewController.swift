//
//  TabBarViewController.swift
//  Trening
//
//  Created by Алексей Гайдуков on 26.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarApperians = UITabBarAppearance()
        tabBarApperians.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarApperians
        tabBar.scrollEdgeAppearance = tabBarApperians

    }
    


}
