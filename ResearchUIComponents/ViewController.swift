//
//  ViewController.swift
//  ResearchUIComponents
//
//  Created by Parker Chen on 2021/3/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segText: UILabel!
    @IBOutlet weak var sliderText: UILabel!
    @IBOutlet weak var switchText: UILabel!
    @IBOutlet weak var progressViewBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        _ = sender.numberOfSegments
        let segVal = sender.selectedSegmentIndex
        segText.text = "you select seg : \(segVal)"
    }
    
    @IBAction func sliderControl(_ sender: UISlider) {
        let sliderVal = sender.value
        sliderText.text = "slider value = \(sliderVal)"
        print("tip_002:\(sliderVal)")
    }
    
    @IBAction func switchControl(_ sender: UISwitch) {
        var switchStr : String = ""
        let switchSts = sender.isOn
        if switchSts == true{
            switchStr = "On"
        }else{
            switchStr = "Off"
        }
        switchText.text = "switch status = \(switchStr)"
    }
    
    @IBAction func progressViewControl(_ sender: UITextField) {
        print("tip_004:\(sender.text)")
        progressViewBar.setProgress(Float(sender.text!)!, animated: true)
    }
}

