//
//  ViewController.swift
//  TimesTable
//
//  Created by Adam Moore on 3/21/18.
//  Copyright © 2018 Adam Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    var currentSliderValue = Int()
    
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func sliderValue(_ sender: UISlider) {
        currentSliderValue = Int(slider.value)
        sliderNumber.text = String(currentSliderValue)
        table.reloadData()
    }
    @IBOutlet weak var sliderNumber: UILabel!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        let startingNumber = indexPath.row + 1
        let multiplyingValue = currentSliderValue
        let product = startingNumber * multiplyingValue
        
        cell.textLabel?.text = "\(startingNumber) x \(multiplyingValue) = \(product)"
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentSliderValue = Int(slider.value)
        sliderNumber.text = String(currentSliderValue)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

