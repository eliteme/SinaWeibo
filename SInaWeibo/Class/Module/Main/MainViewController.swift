//
//  MainViewController.swift
//  SInaWeibo
//
//  Created by 索留元 on 16/4/2.
//  Copyright © 2016年 dianer. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    let tabbar  = MainTabBar()
    override func viewDidLoad() {
        super.viewDidLoad()
        //添加子视图控制器
        setupUI()

        // Do any additional setup after loading the view.
    }
    @objc private func composeDidClick() {
        print(#function)
    }

    private func setupUI() {
        
        tabbar .delegate = self
        tabbar .composeBtn.addTarget(self, action: #selector(MainViewController.composeDidClick), forControlEvents: .TouchUpInside)
        setValue(tabbar, forKey: "tabBar")
        addChildViewControllers()
    }
    
    private func addChildViewControllers(){
        
        addChildViewController(HomeViewController(), title: "首页", imageName: "tabbar_home", index: 0)
        addChildViewController(MessageViewController(), title: "消息", imageName: "tabbar_message_center",index: 1)
        addChildViewController(DiscoverViewController(), title: "发现", imageName: "tabbar_message_center",index: 2)
        addChildViewController(ProfileViewController(), title: "我", imageName: "tabbar_profile",index: 3)
        
    }
    
    private func addChildViewController(vc:UIViewController, title:String, imageName:String, index: Int) {
        
        let nav = BaseNavigationController(rootViewController: vc)
        vc.title = title
        vc.tabBarItem.image = UIImage(named: imageName)
        vc.tabBarItem.tag = index
        
        addChildViewController(nav)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
