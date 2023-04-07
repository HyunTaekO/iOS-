//
//  ViewController.swift
//  TaekE_Allon_3
//
//  Created by 오현택 on 2023/01/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    var mySelectRps: Rps = Rps.rock
    var comSelectRps: Rps = Rps(rawValue: Int.random(in: 0...2))!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "선택하세요!"
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = #imageLiteral(resourceName: "ready")
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        
    }

    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        //currentTitle = 현재 선택된 버튼의 타이틀(옵셔널)
        
        guard let title = sender.currentTitle else{ return }
        switch title{
        case "가위":
            mySelectRps = Rps.scissors
        case "바위":
            mySelectRps = Rps.rock
        case "보":
            mySelectRps = Rps.paper
        default:
            break
        }
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        switch comSelectRps{
        case Rps.rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case Rps.scissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        case Rps.paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        }
        
        switch mySelectRps{
        case Rps.rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "바위"
        case Rps.scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        case Rps.paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
        }
        
        if mySelectRps == comSelectRps {
            resultLabel.text = "비겼습니다!"
        }else if mySelectRps.rawValue - comSelectRps.rawValue == 1 || comSelectRps.rawValue - mySelectRps.rawValue == 2 {
            resultLabel.text = "이겼습니다!"
        }else{
            resultLabel.text = "졌습니다 ㅠ"
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        viewDidLoad() //초기상태
        comSelectRps = Rps(rawValue: Int.random(in: 0...2))!//computer 다시 랜덤 선택
        
    }
    
}


