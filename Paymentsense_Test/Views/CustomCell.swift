//
//  CustomCell.swift
//  Paymentsense_Test
//
//  Created by Athlosn90 on 20/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit

class BaseCell: UITableViewCell {

    var dvmChar: ItemsViewModel! {
           didSet {
               nameLabel.text = dvmChar.name
               detailLabel.text = dvmChar.portrayed
               dvmChar.processImages(imageString: dvmChar.img, completion: { (image) in
                   self.charImage.image = image
               })
           }
       }
    
    var dvmEp: ItemsViewModel! {
           didSet {
                nameLabel.text = dvmEp.title
                detailLabel.text = "Season: \(dvmEp.season) Episode: \(dvmEp.episode)"
                
           }
       }
    
    var dvmQ: ItemsViewModel! {
           didSet {
            nameLabel.text = dvmQ.quote
            detailLabel.text = "By: \(String(describing: dvmQ.author!))"
//            otherLabel.text = dvmQ.q
                
           }
       }
    
    var id = Int()
    
    var nameLabel: UILabel = {
        
        var nameView = UILabel()
        nameView.translatesAutoresizingMaskIntoConstraints = false
        nameView.font = UIFont.boldSystemFont(ofSize: 20)
        nameView.isUserInteractionEnabled = true
        return nameView
    }()
    
    var charImage: UIImageView = {
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.isUserInteractionEnabled = true
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 35
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    var detailLabel: UILabel = {
        
        var nameView = UILabel()
        nameView.translatesAutoresizingMaskIntoConstraints = false
        nameView.font = UIFont.boldSystemFont(ofSize: 18)
        nameView.isUserInteractionEnabled = true
        
        return nameView
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .white

        addSubview(nameLabel)
        addSubview(charImage)
        addSubview(detailLabel)

        setNameLabel()
        setCharImage()
        setDetailLabel()

    }
    
    
    func setNameLabel() {
        let Constraints = [nameLabel.leftAnchor.constraint(equalTo: charImage.rightAnchor),
                           nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
                           nameLabel.widthAnchor.constraint(equalToConstant: 200)]
        
        NSLayoutConstraint.activate(Constraints)
        
    }
    
    func setCharImage() {
        let Constraints = [charImage.leftAnchor.constraint(equalTo: leftAnchor),
                           charImage.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
                           charImage.widthAnchor.constraint(equalToConstant: 70),
                           charImage.heightAnchor.constraint(equalToConstant: 70)]
        
        NSLayoutConstraint.activate(Constraints)
    }
    
    func setDetailLabel() {
        let Constraints = [detailLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 30),
                           detailLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
                           detailLabel.widthAnchor.constraint(equalToConstant: 200)]
          
          NSLayoutConstraint.activate(Constraints)
    }
    

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
