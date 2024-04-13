//
//  function.swift
//  mapQuiz
//
//  Created by yoway Li on 2024/4/11.
//

import Foundation
import UIKit

//next question 更新圖片， 更新選項，參數使用 IndexStruct

func nextQuestion(index: IndexStruct, image: UIImageView!, area: [AreaName], button: [UIButton]!, correctCount: UILabel!
) {
    let nextQuestionIndex = index.correct + index.wrong
    let imageString = area[nextQuestionIndex].alpha
    image.image = UIImage(named:imageString)
    
    let range = 0...area.count - 1
    let excludeNumber = nextQuestionIndex
    var numbers = Set(range)
    numbers.remove(excludeNumber)
    
    var selectedNumbers = [Int]()
        while selectedNumbers.count < 3 {
        if let randomElement = numbers.randomElement() {
            selectedNumbers.append(randomElement)
        }
    }
    selectedNumbers.append(excludeNumber)

    
    selectedNumbers.shuffle()
    var count = 0
    for alpha in button {
        alpha.setTitle(area[selectedNumbers[count]].kannji, for: .normal)
        alpha.titleLabel?.font = UIFont(name: "HiraMaruProN-W4", size: 25.0)
        count += 1

    }
    
    correctCount.text = "正解：\(index.correct)"
    
}
