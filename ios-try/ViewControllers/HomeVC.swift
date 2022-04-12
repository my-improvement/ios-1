//
//  ViewController.swift
//  ios-try
//
//  Created by Digital on 05/04/22.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//         Do any additional setup after loading the view.
        
        startButton.addTarget(self, action: #selector(loadPicture), for: .touchUpInside)
    }

    @objc func loadPicture() {
        let anotherViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabBar")
        
        anotherViewController.modalPresentationStyle = .fullScreen
        
        self.present(anotherViewController, animated: true, completion: nil)
    }
}

