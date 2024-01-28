//
//  ViewController.swift
//  Controls
//
//  Created by Radu Florin Gocan on 25.01.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton(type: .system)
        button.setTitle("Push Me", for: .normal)
        button.setTitle("Pushed", for: .highlighted)
        button.frame = CGRect(x: 20, y: 20, width: 200, height: 100)
        button.addTarget(self, action: #selector(doAnotherThing), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func doAnotherThing(_ button: UIButton) {
        print("Pushed")
    }

    @IBAction func doSomething(_ sender: Any) {
        print("hello")
    }
    
    @IBAction func touchDown(_ sender: Any) {
        print("button down")
    }
    
    @IBAction func sliderChanged(_ slider: UISlider) {
        print("value changed \(slider.value)")
    }
}

