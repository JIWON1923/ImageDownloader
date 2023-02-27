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
    
    private let webImageURL = [
    "https://user-images.githubusercontent.com/68676844/221502655-7e612cec-c9cd-4828-a691-682508c84535.jpeg",
    "https://user-images.githubusercontent.com/68676844/221502683-4202d70f-810d-4719-ac52-79d155c6c6d8.jpeg",
    "https://user-images.githubusercontent.com/68676844/221502703-c254f03a-45ce-43e4-aa61-3e707ccca4e0.jpeg",
    "https://user-images.githubusercontent.com/68676844/221502724-d09ae5ff-3689-425a-a3e5-66ad2ccc13cc.jpeg",
    "https://user-images.githubusercontent.com/68676844/221502749-38c21a8f-1862-4f35-9111-b877484993bf.jpeg"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webImageViews.forEach {
            $0.layer.masksToBounds = true
            $0.contentMode = .scaleAspectFill
        }
    }
    
    
    @IBAction func didTappedLoadButton(_ sender: UIButton) {
        
        for index in loadButtons.indices {
            if loadButtons[index] == sender {
                webImageViews[index].loadImage(urlString: webImageURL[index])
            }
        }
        
    }
    
    
    @IBAction func didTappedReloadButton(_ sender: UIButton) {
        zip(webImageViews, webImageURL).forEach { image, url in
            image.loadImage(urlString: url)
        }
    }
}

