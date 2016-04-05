//
//  UIButton+Extension.swift
//  SInaWeibo
//
//  Created by 索留元 on 16/4/4.
//  Copyright © 2016年 dianer. All rights reserved.
//

import UIKit

extension UIButton{
    
    convenience init (title:String, size:CGFloat, color: UIColor,backImage:String){
        
        self.init()
        setTitle(title, forState: .Normal)
        setBackgroundImage(UIImage(named: backImage), forState: .Normal)
        setTitleColor(color, forState: .Normal)
        titleLabel?.font  = UIFont.systemFontOfSize(size)
        sizeToFit()
         
    }
    
}