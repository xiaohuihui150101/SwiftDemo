//
//  MineViewController.swift
//  SwiftDemo
//
//  Created by isoft on 2018/12/17.
//  Copyright © 2018 isoft. All rights reserved.
//

import UIKit

class MineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white

        let infoView = MineInfoView()
        infoView.backgroundColor = UIColor.gray;
        self.view.addSubview(infoView)
        infoView.snp.updateConstraints { (make) in
            make.top.equalTo(100)
            make.left.equalTo(16)
            make.right.equalTo(-16)
            make.height.equalTo(120)
        }
        
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }

}
