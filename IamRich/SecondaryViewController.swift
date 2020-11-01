//
//  SecondaryViewController.swift
//  IamRich
//
//  Created by Marc Llort Maulion on 22/10/2020.
//

import UIKit

class SecondaryViewController: UIViewController {
    
    @IBOutlet weak var secondaryImageView: UIImageView!
    var callbackImage: (_ imageValue: String?) -> Void = { _ in}
    var currentImage: String?
    var images = ["image1","image2","image3","image4","image5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondaryImageView.image = UIImage(named: currentImage!)
    }
    
    @IBAction func tapImage(_ sender: Any) {
        let id = Int.random(in: 0..<images.count-1)
        secondaryImageView.image = UIImage(named: images[id])
        currentImage = images[id]
    }
    
    @IBAction func exit(_ sender: Any) {
        callbackImage(currentImage)
        self.dismiss(animated: true, completion: nil)
    }
    
}
