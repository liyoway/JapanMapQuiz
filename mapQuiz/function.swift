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

//func reset(country: [AreaName], correctCount: UILabel!, answerButtonIndex: IndexStruct, image: UIImageView!, answerButton: [UIButton]) {
//    if let correctCount.text {
//        correctCount.text = "正解：\(answerButtonIndex.correct)"
//    }
//    correctCount.font = UIFont(name: "HiraMaruProN-W4", size: 25.0)
//    let imageString = country.first!.alpha //地圖名字
//    image.image = UIImage(named:imageString) //叫圖片出來
//    var count = 0
//    for alpha in answerButton {
//        alpha.setTitle(country[answerButtonIndex.answerButtonIndex[count]].kannji, for: .normal)
//        alpha.titleLabel?.font = UIFont(name: "HiraMaruProN-W4", size: 25.0)
//        count += 1
//    }
//}

func reset(country: [AreaName], correctCount: UILabel?, answerButtonIndex: IndexStruct, image: UIImageView?, answerButton: [UIButton]) {
    if let label = correctCount {
        label.text = "正解：\(answerButtonIndex.correct)"
        label.font = UIFont(name: "HiraMaruProN-W4", size: 25.0)
    }

    if let firstCountry = country.first, let imageView = image {
        let imageString = firstCountry.alpha //地圖名字
        imageView.image = UIImage(named: imageString) //叫圖片出來
    }

    for (index, button) in answerButton.enumerated() {
        if index < country.count && index < answerButtonIndex.answerButtonIndex.count {
            let countryIndex = answerButtonIndex.answerButtonIndex[index]
            if countryIndex < country.count {
                button.setTitle(country[countryIndex].kannji, for: .normal)
                button.titleLabel?.font = UIFont(name: "HiraMaruProN-W4", size: 25.0)
            }
        }
    }
}
