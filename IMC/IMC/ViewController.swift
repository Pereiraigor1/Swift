//
//  ViewController.swift
//  IMC
//
//  Created by ICMMAC04-3F86 on 15/07/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ImgMoon: UIImageView!
    
    var confirm = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BntForSun(_ sender: UIButton) {
        if confirm {
            ImgMoon.image = UIImage(named: "Lua")
            sender.setTitle("Go To Sun", for:.normal)
        }
        else {
            ImgMoon.image = UIImage(named: "Sol")
            sender.setTitle("Go To Moon", for: .normal)
        }
        confirm = !confirm
    }
    
}

