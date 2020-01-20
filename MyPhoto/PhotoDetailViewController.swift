//
//  PhotoDetailViewController.swift
//  MyPhoto
//
//  Created by Chhai Chivon on 1/19/20.
//  Copyright © 2020 Chhai Chivon. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
  
    @IBOutlet weak var titleLabel: UILabel!
    var photo :  Photo?

    override func viewDidLoad() {
        super.viewDidLoad()

      // fetchImage()
        
        titleLabel.text = photo?.title
    }
    
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
//    private func fetchImage() {
//        let imageURL = URL(string: "https://i.stack.imgur.com/9z6nS.png")
//        var image: UIImage?
//        if let url = imageURL {
//            //All network operations has to run on different thread(not on main thread).
//            DispatchQueue.global(qos: .userInitiated).async {
//                let imageData = NSData(contentsOf: url)
//                //All UI operations has to run on main thread.
//                DispatchQueue.main.async {
//                    if imageData != nil {
//                        image = UIImage(data: imageData! as Data)
//                        self.photoImageView.image = image
//                        self.photoImageView.sizeToFit()
//                    } else {
//                        image = nil
//                    }
//                }
//            }
//        }
//    }
    
}
