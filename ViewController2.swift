//
//  ViewController2.swift
//  baloot
//
//  Created by mac on 6‏/2‏/2018.
//  Copyright © 2018 baloot. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    
    @IBOutlet weak var twitterbutton: UIButton!
    
    
    @IBAction func BACKbutton(_ sender: Any)
    {
        self.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         assignbackground()
       
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
        
    }
    
    @IBAction func twitterbutton1(_ sender: Any) {
       let url = URL(string: "https://twitter.com/N2wafMu")
        UIApplication.shared.open(url!,options: [:])
    }
    
    func assignbackground(){
        let background = UIImage(named: "background")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }
    

}
