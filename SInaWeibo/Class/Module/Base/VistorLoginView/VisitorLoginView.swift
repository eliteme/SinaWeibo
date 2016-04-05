//
//  VisitorLoginView.swift
//  SInaWeibo
//
//  Created by 索留元 on 16/4/2.
//  Copyright © 2016年 dianer. All rights reserved.
//

import UIKit

class VisitorLoginView: UIView {


    //MARK:设置页面信息
    func setupInfo(imageName:String?, title:String){
        
        iconImageView.hidden = false
        tipLabel.text = title
        
        if imageName != nil {
            circleView.image = UIImage(named: imageName!)
            bringSubviewToFront(circleView)
            iconImageView.hidden = true
 
        } else {
            
            
        }
    }

    //MARK:重写构造方法
    init() {
        super.init(frame: CGRectZero)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
    
        addSubview(circleView)
        addSubview(backView)
        addSubview(iconImageView)
        addSubview(tipLabel)
        
        addSubview(loginButton)
        addSubview(registerButton)
        //设置frame失效
        
        for v in subviews {
            v.translatesAutoresizingMaskIntoConstraints = false
        }
        
        //设置布局
        /*圆圈的约束(首页)*/
        addConstraint(NSLayoutConstraint(item: circleView, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1.0, constant: 0))
        addConstraint(NSLayoutConstraint(item: circleView, attribute: .CenterY, relatedBy: .Equal, toItem: self, attribute: .CenterY, multiplier: 1.0, constant: 0))
        /*圆圈内部的图*/
        addConstraint(NSLayoutConstraint(item: iconImageView, attribute: .CenterX, relatedBy: .Equal, toItem: circleView, attribute: .CenterX, multiplier: 1.0, constant: 0))
        addConstraint(NSLayoutConstraint(item: iconImageView, attribute: .CenterY, relatedBy: .Equal, toItem: circleView, attribute: .CenterY, multiplier: 1.0, constant: 0))
        
        /*提示文案的约束*/
        addConstraint(NSLayoutConstraint(item: tipLabel, attribute: .CenterX, relatedBy: .Equal, toItem: iconImageView, attribute: .CenterX, multiplier: 1.0, constant: 0))
        addConstraint(NSLayoutConstraint(item: tipLabel, attribute: .Top, relatedBy: .Equal, toItem: circleView, attribute: .Bottom, multiplier: 1.0, constant: 26))
        //设置提示文案宽度约束
        addConstraint(NSLayoutConstraint(item: tipLabel, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 224))
 
        /*设置loginButton的约束*/
        addConstraint(NSLayoutConstraint(item: loginButton, attribute: .Left, relatedBy: .Equal, toItem: tipLabel, attribute: .Left, multiplier: 1.0, constant: 0))
        addConstraint(NSLayoutConstraint(item: loginButton, attribute: .Top, relatedBy: .Equal, toItem: tipLabel, attribute: .Bottom, multiplier: 1.0, constant: 16))
        //约束loginButton的宽度
        addConstraint(NSLayoutConstraint(item: loginButton, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 100))
        addConstraint(NSLayoutConstraint(item: loginButton, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 35))
        /*设置registerButton的约束*/
        addConstraint(NSLayoutConstraint(item: registerButton, attribute: .Right, relatedBy: .Equal, toItem: tipLabel, attribute: .Right, multiplier: 1.0, constant: 0))
        addConstraint(NSLayoutConstraint(item: registerButton, attribute: .Top, relatedBy: .Equal, toItem: tipLabel, attribute: .Bottom, multiplier: 1.0, constant: 16))
        //约束registerButton的宽度
        addConstraint(NSLayoutConstraint(item: registerButton, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 100))
        addConstraint(NSLayoutConstraint(item: registerButton, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 35))
        /**/
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[backView]-0-|", options: [], metrics: nil, views: ["backView":backView]))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[backView]-(-45)-[registerButton]", options: [], metrics: nil, views: ["backView":backView,"registerButton":registerButton]))
        //设置背景色
        backgroundColor = UIColor(white: 0.93, alpha: 1.0)
    
    }
    //懒加载视图
    private lazy var iconImageView: UIImageView = UIImageView(image: UIImage(named: "visitordiscover_feed_image_house"))
    private lazy var circleView: UIImageView = UIImageView(image: UIImage(named: "visitordiscover_feed_image_smallicon"))
    private lazy var tipLabel: UILabel = UILabel(title:"ekjkljjkk", size:14, color:UIColor.darkGrayColor())
    
    private lazy var backView:UIImageView = UIImageView(image: UIImage(named: "visitordiscover_feed_mask_smallicon"))
    
    
    //注册按钮
    private lazy var registerButton: UIButton = UIButton(title: "注册", size: 14, color: UIColor.orangeColor(), backImage: "common_button_white_disable")
    //登陆按钮
    private lazy var loginButton: UIButton = UIButton(title: "登录", size: 14, color: UIColor.lightGrayColor(), backImage: "common_button_white_disable")
    
    
    
}
