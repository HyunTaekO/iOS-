//
//  ViewController.swift
//  TaekE_Allon_1
//
//  Created by 오현택 on 2023/01/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!

    @IBOutlet weak var buttonSet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainLabel.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if mainLabel.text == "반갑습니다!"{
            mainLabel.text = "안녕하세요!"
            mainLabel.backgroundColor = UIColor.blue
            mainLabel.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            buttonSet.backgroundColor = UIColor.yellow
        }else{
            mainLabel.text = "반갑습니다!"
            mainLabel.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            buttonSet.setTitle("버튼", for: .normal)
            buttonSet.setTitleColor(UIColor.blue, for: .selected)
        }
        
    }
}

