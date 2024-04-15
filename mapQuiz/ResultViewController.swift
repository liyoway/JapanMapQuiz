//
//  ResultViewController.swift
//  mapQuiz
//
//  Created by yoway Li on 2024/4/13.
//

import UIKit

class ResultViewController: UIViewController {
    
    var result: IndexStruct!
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultStringImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    func updateUI() -> Void {
        resultLabel.font = UIFont(name: "HiraMaruProN-W4", size: 25.0)
        if result.wrong == 3 {
            resultImage.image = UIImage(named: "batsu.png")
            resultStringImage.image = UIImage(named: "message_ganbare.png")
            resultLabel.text = "正解：\(result.correct)"
        } else if result.correct == 47 {
            resultImage.image = UIImage(named: "maru.png")
            resultStringImage.image = UIImage(named: "message_omedetou.png")
            resultLabel.text = "日本地図達人❗️"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        updateUI()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
