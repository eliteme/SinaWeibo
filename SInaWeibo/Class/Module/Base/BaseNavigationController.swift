//
//  BaseNavigationController.swift
//  SInaWeibo
//
//  Created by 索留元 on 16/4/3.
//  Copyright © 2016年 dianer. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func pushViewController(viewController: UIViewController, animated: Bool) {
        
        if  childViewControllers.count != 0 {
            
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.backBarButtonItem = UIBarButtonItem(title: "返回", style: .Plain, target: self, action: #selector(BaseNavigationController.back ))
            viewController.view.backgroundColor = UIColor.whiteColor()
            
            
        }
        super.pushViewController(viewController, animated: true)
    }
    
    @objc private func back(){
        
        popToRootViewControllerAnimated(true)
    
    
    }
    
    
}
