//
//  ViewController.swift
//  Color HW
//
//  Created by Акнур on 8/1/20.
//  Copyright © 2020 Акнур. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UIImageView!
       var itemMenuArray : [Menu] = {
           var blankMenu = Menu ()
           blankMenu.name = "orange"
           blankMenu.imageName = "orange"
           var blankMenu2 = Menu ()
           blankMenu2.name = "pink"
           blankMenu2.imageName = "pink"
        var blankMenu3 = Menu ()
        blankMenu3.name = "green"
        blankMenu3.imageName = "green"
        var blankMenu4 = Menu ()
              blankMenu4.name = "purple"
              blankMenu4.imageName = "purple"
           return [blankMenu,blankMenu2,blankMenu3,blankMenu4]
       }()
       override func viewDidLoad() {
           super.viewDidLoad()
           collectionView.dataSource = self
           collectionView.delegate = self
       }

       override func prepare(for segue : UIStoryboardSegue, sender : Any?){
           if segue.identifier == "showVC"{
               if let vc = segue.destination as? DetailViewController{
                   let menu = sender as? menu
                   print (menu ?? "nil"
                   vc.menu = menu
               }
           }
       }
   }
extension ViewController : UICollectionViewDataSource , UICollectionViewDelegate {
           func numberOfSections(in collectionView : UICollectionView) -> Int {
           return itemMenuArray.count
       }
           func collectionView(_ collectionView : UICollectionView , cellForItemAt indexPath : indexPath) -> UICollectionViewCell{
               if let itemCell = collectionView.dequeReusableCell(withReuseIdentifier : "menuCell" , for : indexPath) as? MenuCollectionViewCell{
                   itemCell.menu = itemMenuArray[indexPath.row]
                   return itemCell

               }
               return UICollectionViewCell()
           }
           func collectionView (_ collectionView : UICollectionView, didSelectItemAt indexPath : indexPath){
               let  menu = itemMenuArray[indexPath.row]
               self.performSeque(withReuseIdentifier : "showVC" , sender : menu)
           }
   }


