//
//  TabBarController.swift
//  DishyApp
//
//  Created by Hanif Sugiyanto on 11/14/16.
//  Copyright © 2016 Extrainteger. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.barTintColor = UIColor.white
        
        let searchController = SearchController()
        let searchNavController = UINavigationController(rootViewController: searchController)
        searchNavController.tabBarItem.image = UIImage(named: "search")
        
        let peopleController = PeopleController()
        let peopleNavController = UINavigationController(rootViewController: peopleController)
        peopleNavController.tabBarItem.image = UIImage(named: "people")
        
        let groupController = GroupController(collectionViewLayout: UICollectionViewFlowLayout())
        let groupNavController = UINavigationController(rootViewController: groupController)
        groupNavController.tabBarItem.image = UIImage(named: "group")
        
        let chartController = ChartController()
        let chartNavController = UINavigationController(rootViewController: chartController)
        chartNavController.tabBarItem.image = UIImage(named: "chart")
        
        viewControllers = [searchNavController,peopleNavController,groupNavController,chartNavController]
    }
}
