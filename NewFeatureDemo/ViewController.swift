//
//  ViewController.swift
//  NewFeatureDemo
//
//  Created by gdcp on 2018/4/17.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        //1、创建UICollectionViewLayout实例
        //注意：一般是创建UICollectionViewLayout类的子类UICollectionViewFlowLayout的实例来进行布局
        let layout = UICollectionViewFlowLayout()
        //2、设置UICollectionViewLayout实例的属性
        //滚动方向
        layout.scrollDirection = .horizontal
        //item与item之间在水平和垂直方向的间隔
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        //item的大小
        layout.itemSize = self.view.bounds.size
        //3、创建UICollectionView实例
        let collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        //4、设置UICollectionView实例的属性
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        collectionView.bounces = true //弹簧效果
        collectionView.showsHorizontalScrollIndicator = false  //隐藏滚动条
        //5、注册单元格类型
        collectionView.register(NewFeatureCell.self, forCellWithReuseIdentifier: "cellID")
        //注意：注册单元格类型时，使用的可重用标识符必须和出列时的标识符一致
        //6、添加到父视图中
        self.view.addSubview(collectionView)
    }

    //协议方法
    //返回分区的数量，默认是1，可选的协议方法
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    //返回给定分区中的项的数量
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    //返回给定位置上的单元格
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //1、从缓存池中将单元格出列
        //for：表示单元格的位置
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! NewFeatureCell
        //注意：dequeueReusableCell返回的结果是必选类型，不是可选的
        //2、设置单元格属性
        cell.imageView.image = UIImage(named: "new_feature_\(indexPath.item+1)")
        
        //3、返回单元格
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

