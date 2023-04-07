//
//  main.swift
//  TaekE_Allon_4
//
//  Created by 오현택 on 2023/01/10.
//

import Foundation

var computerChoice = Int.random(in: 1...100)
var myChoice: Int = 0
while myChoice != computerChoice{
    var userInput = readLine()

    if let input = userInput {
        if let number = Int(input){
            myChoice = number
        }
    }

    switch computerChoice{
    case myChoice:
        print("Bingo!")
    case ..<myChoice:
        print("Down")
    case myChoice...:
        print("Up")
    default:
        break
    }

}
