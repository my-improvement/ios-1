//
//  ViewController.swift
//  ios-try
//
//  Created by Digital on 05/04/22.
//

import UIKit

import Kingfisher
import SwiftyJSON

class AnotherVC: UIViewController {
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var mainImageActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loadData()
    }
    
    func loadData() {
        API.loadSingleDog { data in
            let singleDog = SingleDog(data: data!)
            
            if singleDog.status == "success" {
                let imageUrl = URL(string: singleDog.message)
                
                self.mainImageView.kf.setImage(with: imageUrl) {
                    result in
                    self.mainImageActivityIndicator.isHidden = true
                }
            }
        }
    }
}

