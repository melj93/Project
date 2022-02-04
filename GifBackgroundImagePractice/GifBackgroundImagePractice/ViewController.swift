//
//  ViewController.swift
//  GifBackgroundImagePractice
//
//  Created by samuel Jeong on 2022/02/04.
//

import UIKit
import Gifu

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: GIFImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.animate(withGIFNamed: "rainbowcat", animationBlock:  {
            print("It's animating!!")
        })
    }
    
    @IBAction func onButton(_ sender: UIButton) {
        if imageView.isAnimatingGIF{
            imageView.stopAnimatingGIF()
            sender.setTitle("굴러", for: .normal)
        } else {
            imageView.startAnimatingGIF()
            sender.setTitle("멈춰", for: .normal)
        }
    }
    

}

