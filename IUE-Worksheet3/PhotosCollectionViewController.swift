//
//  PhotosCollectionViewController.swift
//  IUE-Worksheet3
//
//  Created by formando on 16/10/2019.
//  Copyright © 2019 formando. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class PhotosCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout  {
    
    private let reuseIdentifier = "PhotoCell"
    private let itemsPerRow: CGFloat = 2
    private let sectionInsets = UIEdgeInsets(top: 25.0,
            left: 20.0,
            bottom: 25.0,
            right: 20.0)
    private let images = ["esad", "estg", "esslei", "estm", "esecs"]

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
       return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return images.count
        
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PhotoCollectionViewCell
        
        cell.imageView.image = UIImage(named: images[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let itemWidth = (view.frame.width - paddingSpace) / itemsPerRow
    
        return CGSize(width: itemWidth, height: itemWidth)
        
    }
    

    func collectionView(_ collectionView: UICollectionView, layout
    collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return sectionInsets
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return sectionInsets.left
        
    }
    

}
