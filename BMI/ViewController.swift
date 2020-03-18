//
//  ViewController.swift
//  BMI
//
//  Created by star on 2020/3/18.
//  Copyright © 2020 star. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myImageView = UIImageView(
    frame: CGRect(
      x: 0, y: 0, width: 64, height: 172))
    @IBOutlet weak var comment: UILabel!
    @IBOutlet weak var BMIValue: UILabel!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let full = UIScreen.main.bounds.size
    }
    
    @IBAction func Inquire(_ sender: Any) {
        if let height_1 = height.text,
            let weight_1 = weight.text,
            let height_2 = Double(height_1),
            let weight_2 = Double(weight_1){
            let height_3 = height_2 / 100
            let bmi = weight_2 / (height_3 * height_3)
            BMIValue.text = String(format: "%.2f", bmi)
            if bmi < 18.5{
                comment.text = "太瘦嘍，多吃一點"
                myImageView.image = UIImage(named: "1")
                myImageView.center = CGPoint(x: 187.5,y:532)
                    self.view.addSubview(myImageView)
            }
            if bmi >= 18.5 && bmi < 24{
                comment.text = "標準體重，繼續維持"
                myImageView.image = UIImage(named: "2")
                myImageView.center = CGPoint(x: 187.5,y:532)
                    self.view.addSubview(myImageView)
            }
            if bmi >= 24 && bmi < 27{
                comment.text = "有點肥喔，該運動了"
                myImageView.image = UIImage(named: "3")
                myImageView.center = CGPoint(x: 187.5,y:532)
                    self.view.addSubview(myImageView)
          
            }
            if bmi >= 27 && bmi < 30{
                comment.text = "太胖了吧，少吃多動瞜"
                myImageView.image = UIImage(named: "4")
                myImageView.center = CGPoint(x: 187.5,y:532)
                    self.view.addSubview(myImageView)
            }
        }
        view.endEditing(true)
        }
}

