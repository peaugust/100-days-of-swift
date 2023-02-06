//
//  ImageDetailsViewController.swift
//  Project1
//
//  Created by Pedro Freddi on 03/02/23.
//

import UIKit

class ImageDetailsViewController: UIViewController {
    
// MARK: - IBOutlets
    
    @IBOutlet var imageView: UIImageView!
    
// MARK: - Properties
    
    private var imageName: String?
    
// MARK: - Lifecycle
    
    init?(coder: NSCoder, imageName: String) {
        self.imageName = imageName
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let imageName else {
            return
        }
        imageView.image = UIImage(named: imageName)
    }
}
