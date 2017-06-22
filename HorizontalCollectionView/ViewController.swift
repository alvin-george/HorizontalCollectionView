//
//  ViewController.swift
//  HorizontalCollectionView
//
//  Created by apple on 22/06/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var horizontalCollectionView: UICollectionView!
    
    var selectedIndex = Int ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialUISetup()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        initialUISetup()
        
    }
    func initialUISetup()
    {
        
        
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    func collectionView(collectionView : UICollectionView,layout collectionViewLayout:UICollectionViewLayout,sizeForItemAtIndexPath indexPath:NSIndexPath) -> CGSize
    {
        var cellSize:CGSize = CGSize(width: 60, height: 100)
        return cellSize
    }
    //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    //
    //
    //        return CGSize(width: CGFloat((collectionView.frame.size.width / 3) - 40), height: CGFloat(100))
    //    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell: HorizaontalCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "horizaontalCollectionCell", for: indexPath as IndexPath) as! HorizaontalCollectionCell
        
        if selectedIndex == indexPath.row
        {
            cell.backgroundColor = UIColor.green
        }
        else
        {
            cell.backgroundColor = UIColor.red
        }
        
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        selectedIndex = indexPath.row
        
        self.horizontalCollectionView.reloadData()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

