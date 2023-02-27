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
    "https://user-images.githubusercontent.com/68676844/221489275-d8fd112c-56cc-45f6-926e-418ec907619c.jpg",
    "https://user-images.githubusercontent.com/68676844/221489336-8606866a-2aeb-497c-a4c0-5e5c6f0e00d8.jpg",
    "https://user-images.githubusercontent.com/68676844/221489406-e4ef9ab4-c9fa-4d49-8a89-3f446227e73f.jpg",
    "https://user-images.githubusercontent.com/68676844/221489500-bcac2c01-d4ff-4162-a1bf-e02ab3ec36d8.jpg",
    "https://user-images.githubusercontent.com/68676844/221489614-5d29abba-80fb-484b-971d-962beee35239.jpg"
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

