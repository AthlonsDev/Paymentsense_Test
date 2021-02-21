//
//  View.swift
//  Paymentsense_Test
//
//  Created by Athlosn90 on 19/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit

class DetailView: UIView {

    
    var mainLabel: UILabel = {
        
        var nameView = UILabel()
        nameView.translatesAutoresizingMaskIntoConstraints = false
        nameView.font = UIFont.boldSystemFont(ofSize: 20)
        nameView.numberOfLines = 0
        nameView.textAlignment = .left
        return nameView
    }()
    
    var charImage: UIImageView = {
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    var secondaryLabel: UILabel = {
        
        var nameView = UILabel()
        nameView.translatesAutoresizingMaskIntoConstraints = false
        nameView.font = UIFont.boldSystemFont(ofSize: 18)
        
        return nameView
    }()
    
    var LabelLSideOne: UILabel = {
        
        var nameView = UILabel()
        nameView.translatesAutoresizingMaskIntoConstraints = false
        nameView.font = UIFont.boldSystemFont(ofSize: 12)
        nameView.numberOfLines = 0
        
        return nameView
    }()
    
    var LabelLSideTwo: UILabel = {
        
        var nameView = UILabel()
        nameView.translatesAutoresizingMaskIntoConstraints = false
        nameView.font = UIFont.boldSystemFont(ofSize: 12)
        nameView.numberOfLines = 0
        
        return nameView
    }()
    
    var LabelLSideThree: UILabel = {
        
        var nameView = UILabel()
        nameView.translatesAutoresizingMaskIntoConstraints = false
        nameView.font = UIFont.boldSystemFont(ofSize: 12)
        nameView.numberOfLines = 0
        
        return nameView
    }()
    
    var LabelRSideOne: UILabel = {
        
        var nameView = UILabel()
        nameView.translatesAutoresizingMaskIntoConstraints = false
        nameView.font = UIFont.boldSystemFont(ofSize: 12)
        nameView.numberOfLines = 0
        
        return nameView
    }()
    
    var QuoteButton: UIButton = {
        
        var qb = UIButton()
        qb.translatesAutoresizingMaskIntoConstraints = false
        qb.isUserInteractionEnabled = true
        qb.backgroundColor = UIColor(displayP3Red: 2/255, green: 102/255, blue: 53/255, alpha: 1)
        qb.setTitleColor(.white, for: .normal)
        qb.setTitle("Quotes", for: .normal)
        
        qb.layer.cornerRadius = 25
        qb.layer.masksToBounds = true
        
        return qb
    }()
    
    var frameView: UIView = {
        var fv = UIView()
        fv.translatesAutoresizingMaskIntoConstraints = false
        fv.layer.borderWidth = 2
        fv.layer.borderColor = UIColor.black.cgColor
        return fv
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white

        addSubview(frameView)
        addSubview(mainLabel)
        addSubview(charImage)
        addSubview(secondaryLabel)
        addSubview(LabelLSideOne)
        addSubview(LabelLSideTwo)
        addSubview(LabelLSideThree)
        addSubview(LabelRSideOne)
        addSubview(QuoteButton)
        
//
//
        setNameLabel()
        setCharImage()
        setDetailLabel()
        setLLabelOne()
        setLLabelTwo()
        setLLabelThree()
        setRLabelOne()
        setFrameView()
        setQuoteLabel1()
    }
    
    
    func setFrameView() {
        let Constraints = [frameView.topAnchor.constraint(equalTo: mainLabel.topAnchor, constant: -20),
                           frameView.bottomAnchor.constraint(equalTo: LabelRSideOne.bottomAnchor, constant: 20),
                           frameView.rightAnchor.constraint(equalTo: rightAnchor),
                           frameView.leftAnchor.constraint(equalTo: leftAnchor)]
           
           NSLayoutConstraint.activate(Constraints)
       }
       
    
    func setNameLabel() {
        let Constraints = [mainLabel.topAnchor.constraint(equalTo: charImage.bottomAnchor, constant: 50),
                           mainLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
                           mainLabel.widthAnchor.constraint(equalToConstant: 400)]
        
        NSLayoutConstraint.activate(Constraints)
        
    }
    
    func setCharImage() {
        let Constraints = [charImage.centerXAnchor.constraint(equalTo: centerXAnchor),
                           charImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
                           charImage.widthAnchor.constraint(equalToConstant: 500),
                           charImage.heightAnchor.constraint(equalToConstant: 200)]
        
        NSLayoutConstraint.activate(Constraints)
    }
    
    func setDetailLabel() {
        let Constraints = [secondaryLabel.leftAnchor.constraint(equalTo: mainLabel.leftAnchor),
                           secondaryLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 10),
                           secondaryLabel.widthAnchor.constraint(equalToConstant: 400)]
          
          NSLayoutConstraint.activate(Constraints)
    }
    
    func setLLabelOne() {
        let Constraints = [LabelLSideOne.leftAnchor.constraint(equalTo: leftAnchor,constant: 10),
                           LabelLSideOne.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 40),
                           LabelLSideOne.widthAnchor.constraint(equalToConstant: 400)]
          
          NSLayoutConstraint.activate(Constraints)
    }
    
    
    func setLLabelTwo() {
        let Constraints = [LabelLSideTwo.leftAnchor.constraint(equalTo: leftAnchor,constant: 10),
                           LabelLSideTwo.topAnchor.constraint(equalTo: LabelLSideOne.bottomAnchor, constant: 10),
                           LabelLSideTwo.widthAnchor.constraint(equalToConstant: 400)]
          
          NSLayoutConstraint.activate(Constraints)
    }
    
    
    func setLLabelThree() {
        let Constraints = [LabelLSideThree.leftAnchor.constraint(equalTo: leftAnchor,constant: 10),
                           LabelLSideThree.topAnchor.constraint(equalTo: LabelLSideTwo.bottomAnchor, constant: 10),
                           LabelLSideThree.widthAnchor.constraint(equalToConstant: 400)]
          
          NSLayoutConstraint.activate(Constraints)
    }
    
    
    func setRLabelOne() {
          let Constraints = [LabelRSideOne.leftAnchor.constraint(equalTo: leftAnchor,constant: 10),
                             LabelRSideOne.topAnchor.constraint(equalTo: LabelLSideThree.bottomAnchor, constant: 10),
                             LabelRSideOne.widthAnchor.constraint(equalToConstant: 400)]
                
                NSLayoutConstraint.activate(Constraints)
    }
    
    func setQuoteLabel1() {
        let Constraints = [QuoteButton.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 10),
                           QuoteButton.topAnchor.constraint(equalTo: frameView.bottomAnchor, constant: 20),
                           QuoteButton.widthAnchor.constraint(equalToConstant: 80),
                           QuoteButton.heightAnchor.constraint(equalToConstant: 50)]
          
          NSLayoutConstraint.activate(Constraints)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
