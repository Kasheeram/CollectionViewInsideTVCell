//
//  CollectionViewCell.swift
//  CollectionViewInsideTVCell
//
//  Created by kashee on 07/08/18.
//  Copyright © 2018 kashee. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    let attachmentImages:UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "image1"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        //        imageView.contentMode = .scaleAspectFill
//        imageView.layer.cornerRadius = 25
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addAutoLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addAutoLayout(){
        self.addSubview(attachmentImages)
        attachmentImages.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        attachmentImages.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        attachmentImages.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        attachmentImages.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
}
