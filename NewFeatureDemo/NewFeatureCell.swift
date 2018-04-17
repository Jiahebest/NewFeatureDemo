//
//  NewFeatureCell.swift
//  NewFeatureDemo
//
//  Created by gdcp on 2018/4/17.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class NewFeatureCell: UICollectionViewCell {
    lazy var imageView  = UIImageView()
    //重写构造函数
    override init(frame: CGRect) {
        super.init(frame: frame)
        //设置imageView的frame
        imageView.frame = self.frame
        self.addSubview(imageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
