//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by egor aleksandrovich on 11.12.2022.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: Any) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("good")
            }
            
        }
        
        present(shareController, animated: true, completion: nil)
        
    }
    

}
