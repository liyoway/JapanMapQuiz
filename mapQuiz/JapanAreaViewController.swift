//
//  JapanAreaViewController.swift
//  mapQuiz
//
//  Created by yoway Li on 2024/4/11.
//

import UIKit

class JapanAreaViewController: UIViewController {
    
    @IBOutlet weak var wrongCount: UISegmentedControl!
    @IBOutlet weak var image: UIImageView!
    let JapanAreas = [
        AreaName(kannji: "北海道", alpha: "map-hokkaido.png"),
        AreaName(kannji: "青森県", alpha: "map-aomori.png"),
        AreaName(kannji: "岩手県", alpha: "map-iwate.png"),
        AreaName(kannji: "宮城県", alpha: "map-miyagi.png"),
        AreaName(kannji: "秋田県", alpha: "map-akita.png"),
        AreaName(kannji: "山形県", alpha: "map-yamagata.png"),
        AreaName(kannji: "福島県", alpha: "map-fukushima.png"),
        AreaName(kannji: "茨城県", alpha: "map-ibaraki.png"),
        AreaName(kannji: "栃木県", alpha: "map-tochigi.png"),
        AreaName(kannji: "群馬県", alpha: "map-gunma.png"),
        AreaName(kannji: "埼玉県", alpha: "map-saitama.png"),
        AreaName(kannji: "千葉県", alpha: "map-chiba.png"),
        AreaName(kannji: "東京都", alpha: "map-tokyo.png"),
        AreaName(kannji: "神奈川県", alpha: "map-kanagawa.png"),
        AreaName(kannji: "新潟県", alpha: "map-niigata.png"),
        AreaName(kannji: "富山県", alpha: "map-toyama.png"),
        AreaName(kannji: "石川県", alpha: "map-ishikawa.png"),
        AreaName(kannji: "福井県", alpha: "map-fukui.png"),
        AreaName(kannji: "山梨県", alpha: "map-yamanashi.png"),
        AreaName(kannji: "長野県", alpha: "map-nagano.png"),
        AreaName(kannji: "岐阜県", alpha: "map-gifu.png"),
        AreaName(kannji: "静岡県", alpha: "map-shizuoka.png"),
        AreaName(kannji: "愛知県", alpha: "map-aichi.png"),
        AreaName(kannji: "三重県", alpha: "map-mie.png"),
        AreaName(kannji: "滋賀県", alpha: "map-shiga.png"),
        AreaName(kannji: "京都府", alpha: "map-kyoto.png"),
        AreaName(kannji: "大阪府", alpha: "map-osaka.png"),
        AreaName(kannji: "兵庫県", alpha: "map-hyogo.png"),
        AreaName(kannji: "奈良県", alpha: "map-nara.png"),
        AreaName(kannji: "和歌山県", alpha: "map-wakayama.png"),
        AreaName(kannji: "鳥取県", alpha: "map-tottori.png"),
        AreaName(kannji: "島根県", alpha: "map-shimane.png"),
        AreaName(kannji: "岡山県", alpha: "map-okayama.png"),
        AreaName(kannji: "広島県", alpha: "map-hiroshima.png"),
        AreaName(kannji: "山口県", alpha: "map-yamaguchi.png"),
        AreaName(kannji: "徳島県", alpha: "map-tokushima.png"),
        AreaName(kannji: "香川県", alpha: "map-kagawa.png"),
        AreaName(kannji: "愛媛県", alpha: "map-ehime.png"),
        AreaName(kannji: "高知県", alpha: "map-kochi.png"),
        AreaName(kannji: "福岡県", alpha: "map-fukuoka.png"),
        AreaName(kannji: "佐賀県", alpha: "map-saga.png"),
        AreaName(kannji: "長崎県", alpha: "map-nagasaki.png"),
        AreaName(kannji: "熊本県", alpha: "map-kumamoto.png"),
        AreaName(kannji: "大分県", alpha: "map-oita.png"),
        AreaName(kannji: "宮崎県", alpha: "map-miyazaki.png"),
        AreaName(kannji: "鹿児島県", alpha: "map-kagoshima.png"),
        AreaName(kannji: "沖縄県", alpha: "map-okinawa.png")
    ]


    override func viewDidLoad() {
        super.viewDidLoad()

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