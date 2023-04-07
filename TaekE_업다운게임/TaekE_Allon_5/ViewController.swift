//
//  ViewController.swift
//  TaekE_Allon_5
//
//  Created by 오현택 on 2023/01/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var upDownLabel: UILabel!
    
    @IBOutlet weak var choiceLabel: UILabel!
    var answerNumber = Int.random(in: 1...10)
    var myChoiceNum = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        upDownLabel.text = "숫자를 선택하세요."
        choiceLabel.text = ""
        answerNumber = Int.random(in: 1...10)
    }

    @IBAction func selectNumberButtonEvent(_ sender: UIButton) {
        guard let number = sender.currentTitle else{ return }
//        if choiceLabel.text == ""{
//            choiceLabel.text = String(number)
//        }else{
//            choiceLabel.text?.append(contentsOf: number)
//        }
        
        choiceLabel.text = String(number)
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        viewDidLoad()
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        if let myNumString = choiceLabel.text{
            if let myNum = Int(myNumString){
                switch answerNumber{
                case myNum:
                    upDownLabel.text = "Bingo!😆👍"
                case ..<myNum:
                    upDownLabel.text = "Down"
                case myNum...:
                    upDownLabel.text = "Up"
                default:
                    break
                }
            }
        

        }
    }
    
}

