//
//  UILabel+Extension.swift
//  SInaWeibo
//
//  Created by 索留元 on 16/4/3.
//  Copyright © 2016年 dianer. All rights reserved.
//

import UIKit


extension UILabel {
    
    
    convenience init (title:String, size:CGFloat, color:UIColor){
        
        self.init()
        text = title
        font = UIFont.systemFontOfSize(size)
        textColor = color
        backgroundColor = UIColor.redColor()
        numberOfLines = 0
        textAlignment = NSTextAlignment.Center
        sizeToFit()
        
    }
}
