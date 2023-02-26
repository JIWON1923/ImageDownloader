//
//  ViewController.swift
//  ImageDownloader
//
//  Created by 이지원 on 2023/02/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var webImageViews: [UIImageView]!
    @IBOutlet var loadButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func didTappedLoadButton(_ sender: UIButton) {
        
        for index in loadButtons.indices {
            if loadButtons[index] == sender {
                print("\(index) tapped!")
            }
        }
        
    }
    
    
    @IBAction func didTappedReloadButton(_ sender: UIButton) {
        print("did tapped LOAD AL IMAGES !!")
        
    }
}

