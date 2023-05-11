//
//  ViewController.swift
//  sliderProject
//
//  Created by Aeneas Reynolds on 4/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var box: UIView!
    @IBOutlet weak var Act: UIActivityIndicatorView!
    @IBOutlet weak var colorPick: UIColorWell!
    
    @IBOutlet weak var midPro: UIProgressView!

    @IBOutlet weak var bottomPro: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sw(_ sender: UISwitch) {
        if sender.isOn {
            Act.startAnimating()
        } else {
            Act.stopAnimating()
        }
    }
    
    @IBAction func tapped(_ sender: UIButton) {
        if let color = colorPick.selectedColor {
            box.backgroundColor = color
        }
    }
    
    @IBAction func slide(_ sender: UISlider) {
        let v = sender.value
   //     print(v)
        if v > 0.75 {
            bottomPro.progressTintColor = .red
        } else if v < 0.25 {
            bottomPro.progressTintColor = .green
        } else {
            bottomPro.progressTintColor = .blue
        }
        midPro.progressTintColor = UIColor(red: CGFloat(v), green: CGFloat(v), blue: 0, alpha: 0)
        bottomPro.progress = v
        midPro.progress = 1 - v
    }
}

