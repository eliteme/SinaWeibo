//
//  MainTabBar.swift
//  SInaWeibo
//
//  Created by 索留元 on 16/4/3.
//  Copyright © 2016年 dianer. All rights reserved.
//

import UIKit

class MainTabBar: UITabBar {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(code/r:) has not been implemented")
        super.init(coder: aDecoder)
        setUpUI()
        
    }
    
    private func setUpUI(){
        addSubview(composeBtn)
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let w = bounds.width / 5
        let h = bounds.height
        let rect = CGRect(x: 0, y: 0, width: w, height: h)
        
        var  index:CGFloat = 0
        
        for subView in subviews {
            
            if subView.isKindOfClass(NSClassFromString("UITabBarButton")!) {
                
                subView.frame = CGRectOffset(rect, w * index, 0)
                
                index += (index == 1) ? 2 : 1
                
            }
            
            composeBtn.frame = CGRectOffset(rect, 2 * w, 0)
        }
    }
    
    
    lazy var composeBtn: UIButton = {
        
        let btn = UIButton()
        btn.setImage(UIImage(named:"tabbar_compose_icon_add"), forState: .Normal)
        btn.setImage(UIImage(named:"tabbar_compose_icon_add_highlighted"), forState: .Highlighted)
        btn.setBackgroundImage(UIImage(named:"tabbar_compose_button"), forState: .Normal)
    btn.setBackgroundImage(UIImage(named:"tabbar_compose_button_highlighted"), forState: .Highlighted)
        
        
        btn.sizeToFit()
        
        return btn
    
    
    
    }()

}
