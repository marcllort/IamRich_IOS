//
//  ViewController.swift
//  IamRich
//
//  Created by Marc Llort Maulion on 22/10/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var infoButton: UIButton!
    var images = ["image1","image2","image3","image4","image5"]
    var currentImage = "image1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func imageTapHandler(_ sender: Any) {
        let id = Int.random(in: 0..<images.count-1)
        mainImageView.image = UIImage(named: images[id])
        currentImage = images[id]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "infoTransition"{
            let vc = segue.destination as! SecondaryViewController
            vc.currentImage = currentImage
            
            vc.callbackImage = {currentImage in
                self.mainImageView.image = UIImage(named: currentImage!)
            }
        }
    }
    
}

