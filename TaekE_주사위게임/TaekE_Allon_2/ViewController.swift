//
//  ViewController.swift
//  TaekE_Allon_2
//
//  Created by 오현택 on 2023/01/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage1: UIImageView!
    
    @IBOutlet weak var diceImage2: UIImageView!
    
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func rollButton(_ sender: UIButton) {
        diceImage1.image = diceArray.randomElement()
        diceImage2.image = diceArray.randomElement()
        
    }
    
    
    
}

