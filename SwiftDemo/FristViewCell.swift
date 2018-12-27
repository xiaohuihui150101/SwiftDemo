//
//  FristViewCell.swift
//  SwiftDemo
//
//  Created by isoft on 2018/12/17.
//  Copyright © 2018 isoft. All rights reserved.
//

import UIKit

class FristViewCell: UITableViewCell {
    
    static let cellIdentifier = "FristViewCell"
    
    let iconImg : UIImageView = {
        let img = UIImageView()
        img.backgroundColor = UIColor.purple
        return img;
    } ()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = UITableViewCell.SelectionStyle.none
        
        setUI()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUI() {
        
        contentView.addSubview(iconImg)
        iconImg.snp.updateConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(16)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        
        
        
    }
    
}
