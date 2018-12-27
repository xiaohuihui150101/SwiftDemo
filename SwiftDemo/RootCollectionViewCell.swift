//
//  RootCollectionViewCell.swift
//  SwiftDemo
//
//  Created by isoft on 2018/12/17.
//  Copyright © 2018 isoft. All rights reserved.
//

import UIKit

class RootCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "RootCollectionViewCell"
    
    let titleLB : UILabel = {
        
        let titleLB = UILabel()
        titleLB.text = "测试demo的swift数据"
        titleLB.textColor = UIColor.black
        titleLB.font = UIFont.systemFont(ofSize: 14)
        return titleLB;
        
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.backgroundColor = UIColor.gray
        setUI()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUI() {
        contentView.addSubview(titleLB)
        titleLB.snp.updateConstraints { (make) in
            make.centerY.equalTo(contentView.snp_centerY)
            make.left.equalTo(16)
            make.height.equalTo(26)
            make.width.equalTo(mScreenWidth-32)
        }
        
    }
    
    
}
