//
//  ViewController.swift
//  SwiftDemo
//
//  Created by isoft on 2018/12/17.
//  Copyright © 2018 isoft. All rights reserved.
//

import UIKit
import SnapKit


class ViewController: UIViewController {

    fileprivate lazy var tableView : UITableView = {[weak self] in
        let tableview = UITableView(frame: CGRect.zero, style:.plain)
        tableview.delegate = self
        tableview.dataSource = self
        tableview.backgroundColor = UIColor.white
        
        tableview.register(FristViewCell.self, forCellReuseIdentifier:FristViewCell.cellIdentifier)
        
        return tableview;
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "导航栏显示的字"
        setUI()
        
        
    }


}

extension ViewController {
    
    func setUI() {
        view.addSubview(tableView)
        tableView.snp.updateConstraints { (make) in
            make.top.equalToSuperview().offset(17*k6Scale)
            make.right.equalTo(self.view).offset(0*m6Scale)
            make.left.equalTo(self.view).offset(0*m6Scale)
            make.bottom.equalTo(self.view).offset(0)
        }
        
    }
    
}

extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("======%ld=====")
        
        let vc = RootViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FristViewCell.cellIdentifier) as! FristViewCell
        return cell
    }
    
    
}

