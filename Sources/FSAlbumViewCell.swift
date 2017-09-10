//
//  FSAlbumViewCell.swift
//  Fusuma
//
//  Created by Yuta Akizuki on 2015/11/14.
//  Copyright © 2015年 ytakzk. All rights reserved.
//

import UIKit
import Photos

final class FSAlbumViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage? {
        
        didSet {
            
            self.imageView.image = image
        }
    }
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        self.isSelected = false
        self.backgroundColor = UIColor.white
    }
    
    override var isSelected : Bool {
        
        didSet {
            self.layer.borderColor = isSelected ? fusumaTintColor.cgColor : UIColor.clear.cgColor
            self.layer.borderWidth = isSelected ? 4 : 0
            self.imageView.layer.opacity = isSelected ? 0.3 : 1
        }
        
    }
}
