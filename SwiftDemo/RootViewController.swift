//
//  RootViewController.swift
//  SwiftDemo
//
//  Created by isoft on 2018/12/17.
//  Copyright © 2018 isoft. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    fileprivate lazy var collectionView2 : UICollectionView = {[weak self ] in
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.itemSize = CGSize(width: mScreenWidth-32, height: 100)
        let collection = UICollectionView(frame:CGRect.zero,collectionViewLayout:flowlayout)
        collection.backgroundColor = .white
        collection.delegate = self
        collection.dataSource = self
        collection.showsVerticalScrollIndicator = false
        flowlayout.minimumInteritemSpacing = 4;//代表的是纵向的空间间隔
        flowlayout.minimumLineSpacing = 16 ;//代表的是纵向的空间间隔
        flowlayout.sectionInset = UIEdgeInsets.init(top: 10, left: 0, bottom: 10, right: 0)
        collection.register(RootCollectionViewCell.self, forCellWithReuseIdentifier: RootCollectionViewCell.cellIdentifier)
        return collection
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        setUI()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }

}

extension RootViewController {
    func setUI() {
        view.addSubview(collectionView2)
        collectionView2.snp.updateConstraints { (make) in
            make.top.equalToSuperview().offset(17*k6Scale)
            make.right.equalTo(self.view).offset(0*m6Scale)
            make.left.equalTo(self.view).offset(0*m6Scale)
            make.bottom.equalTo(self.view).offset(0)
        }
        
    }
}

extension RootViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RootCollectionViewCell.cellIdentifier, for: indexPath) as! RootCollectionViewCell

        return cell
    }
    
    
}

extension RootViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = MineViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
