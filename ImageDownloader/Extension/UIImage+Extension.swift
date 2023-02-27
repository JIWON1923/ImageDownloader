//
//  UIImage+Extension.swift
//  ImageDownloader
//
//  Created by 이지원 on 2023/02/27.
//

import UIKit


extension UIImageView {
    
    func loadImage(urlString: String) {
        
        DispatchQueue.main.async {
            self.image = UIImage(systemName: "photo")
        }
        
        guard let url = URL(string: urlString) else { return }
        
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
