//
//  ViewController.swift
//  myndBodyApp1
//
//  Created by Apple on 7/17/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gifView: UIImageView!
    var customMessages =
        ["Owning our story and loving ourselves through that process is the bravest thing that we’ll ever do", "Be yourself. An original is so much better than a copy", "Self-love is not selfish; you cannot truly love another until you know how to love yourself", "You can’t pour from an empty cup. Take care of yourself first", "Put yourself at the top of your to-do list every single day and the rest will fall into place", "No one can make you feel inferior without your consent -Eleanor Rooselvelt", "Confidence is the ability to feel beautiful, without needing someone to tell you"]
//    let randomNumber = Int.random(in: 0...3)
//    let alertMessage = customMessages[0]
//  var messages : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gifView.loadGif(name: "source")
    }
    
    
    @IBAction func quote(_ sender: UIButton) {
//        let selectedEmotion = sender.titleLabel?.text
        
        let randomNumber = Int.random(in: 0...6)
        
//        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[randomNumber]
        let alertMessage = customMessages[randomNumber]
        
        let alertController = UIAlertController(title: "Quote of the Day", message: alertMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "ok", style: .default, handler:nil))
        
        present(alertController, animated:true, completion: nil)
   
    }

    
////    @IBOutlet weak var GifView: UIImageView!
////    override func viewDidLoad() {
////        super.viewDidLoad()
//
////        func showMessage(sender: UIButton) {
////        }
//
//
//
//        GifView.loadGif(name: "source")
//        // Do any additional setup after loading the view.
//    }
//
//
//}
//
}
