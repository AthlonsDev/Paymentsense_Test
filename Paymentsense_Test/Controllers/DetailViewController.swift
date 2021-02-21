//
//  DetailViewController.swift
//  Paymentsense_Test
//
//  Created by Athlosn90 on 19/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    var category = String()
    var id = Int()
    var viewModel = DetailViewModel()

    
    override func viewDidLoad() {
        
//        TODO: Call Service querying using obtained values to find all details.
        
        print("\(category)/\(id)")
        
        initView()
        
        updateUI()
                
    }
    
    func initView() {
//        TODO: Create and Initialize view
        view = DetailView()
    }

    func updateUI() {
        let newString = ("\(category)/\(id)")
        let newQuery = newString.replacingOccurrences(of: " ", with: "+")
                          
        print(newQuery)
                
        viewModel.getData(category: category, query: newQuery) { (data, success) in
                    
                    if success {

                        (self.view as! DetailView).mainLabel.text = self.viewModel.mainLabel
                        (self.view as! DetailView).secondaryLabel.text = self.viewModel.secondaryLabel
                        (self.view as! DetailView).LabelLSideOne.text = self.viewModel.LabelLSideOne
                        (self.view as! DetailView).LabelLSideTwo.text = self.viewModel.LabelLSideTwo
                        (self.view as! DetailView).LabelLSideThree.text = self.viewModel.LabelLSideThree
                       
                        (self.view as! DetailView).LabelRSideOne.text = self.viewModel.LabelRSideOne
//
                        self.viewModel.processImages(imageString: self.viewModel.img) { (image) in
                            (self.view as! DetailView).charImage.image = image
                        }
                        
                        if self.category != "Characters" {
                            (self.view as! DetailView).QuoteButton.removeFromSuperview()
                        }
                        
                    }
                
                }
    }
    
    
    @objc func goToCharacterQuotes() {
        
//        TODO: Open Tableview with Quotes filtered by character name
        
    }
    
}
