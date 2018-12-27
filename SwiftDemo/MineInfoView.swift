//
//  MineInfoView.swift
//  SwiftDemo
//
//  Created by isoft on 2018/12/17.
//  Copyright © 2018 isoft. All rights reserved.
//

import UIKit

class MineInfoView: UIView {
    
    let iconImg : UIImageView = {
       let iconImg = UIImageView()
        iconImg.backgroundColor = UIColor.red
        return iconImg
    }()
    
    let nameLB : UILabel = {
       let nameLB = UILabel()
        nameLB.text = "詹姆斯二世"
        nameLB.font = UIFont.systemFont(ofSize: 14)
        nameLB.textColor = UIColor.black
        return nameLB;
    }()
    
    let titleLB : UILabel = {
       let titleLB = UILabel()
        titleLB.text = "测试信息的测试信息测试信息测试信息测试信息测试信息测试信息的测试信息测试信息测试信息测试信息测试信息测试信息的测试信息测试信息测试信息测试信息测试信息"
        titleLB.numberOfLines = 0
        titleLB.font = UIFont.systemFont(ofSize: 13)
        titleLB.textColor = UIColor.blue
        return titleLB;
    }()
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(iconImg)
        iconImg.snp.updateConstraints { (make) in
            make.left.equalTo(16)
            make.top.equalTo(20)
            make.width.height.equalTo(40)
        }
        
        addSubview(nameLB)
        nameLB.snp.updateConstraints { (make) in
            make.left.equalTo(iconImg.snp.right).offset(10)
            make.centerY.equalTo(iconImg.snp_centerYWithinMargins)
            make.right.equalTo(-16)
            make.height.equalTo(26)
        }
        
        addSubview(titleLB)
        titleLB.snp.updateConstraints { (make) in
            make.top.equalTo(iconImg.snp_bottomMargin).offset(10)
            make.left.equalTo(16)
            make.right.equalTo(-16)
            make.height.equalTo(50)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
