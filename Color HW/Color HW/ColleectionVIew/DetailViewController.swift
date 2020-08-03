//
//  DetailViewController.swift
//  Color HW
//
//  Created by Акнур on 8/1/20.
//  Copyright © 2020 Акнур. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        weak var nameLabel: UILabel!{
          didSet {
              guard  let   image = menu?.imageName else {return }
              imageView.image = UIImage(named : image)
          }
      }
      @IBOutlet weak var imageView: UIImageView!{
          didSet {
              guard let image = menu?.imageName else { return }
            imageView.image = UIImage{named: image}
          }
      }
      var menu : Menu?
       
    }}
