//
//  MenuCollectionViewCell.swift
//  Color HW
//
//  Created by Акнур on 8/1/20.
//  Copyright © 2020 Акнур. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView : UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var menu : Menu? {
        didSet {
            nameLabel.text = menu?.name
            if let image = menu?.imageName {
                imageName.image = UIImage(named : image)

            }
        }
    }
}
