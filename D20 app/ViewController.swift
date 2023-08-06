//
//  ViewController.swift
//  D20 app
//
//  Created by Mitul Patel on 8/4/18.
//  Copyright © 2018 Manan Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var x = ["D4", "D6", "D10", "D12", "D20" ]
    var nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    var d20 = 0
    var d4 = 0
    var d6 = 0
    var d10 = 0
    var d12 = 0
    var myIndex = 0
    var myIndex1 = 0
    var randomInt = 0
    var y = 0
    @IBOutlet weak var Numbers: UITableView!
    @IBOutlet weak var dice: UITableView!
    @IBOutlet weak var output: UITextField!
    @IBAction func type(_ sender: UIButton) {
        createAlert(title: "Which type of dice do you want?", message: "")

    }
//    @IBAction func High(_ sender: UIButton) {
////        d4 = Int.random(in: 2..<5)
////        d6 = Int.random(in: 3..<7)
////        d10 = Int.random(in: 5..<11)
////        d12 = Int.random(in: 7..<12)
////        d20 = Int.random(in: 11..<21)
//        y = 1
//        print(y)
//
//    }
//    @IBAction func Low(_ sender: UIButton) {
////        d4 = Int.random(in: 1..<2)
////        d6 = Int.random(in: 1..<4)
////        d10 = Int.random(in: 1..<6)
////        d12 = Int.random(in: 1..<7)
////        d20 = Int.random(in: 1..<11)
//        y = 2
//    }
//    @IBAction func Normal(_ sender: UIButton) {
////        d4 = Int.random(in: 1..<5)
////        d6 = Int.random(in: 1..<7)
////        d10 = Int.random(in: 1..<11)
////        d12 = Int.random(in: 1..<13)
////        d20 = Int.random(in: 1..<21)
//        y = 3
//    }
    //    @IBOutlet weak var D20LB: UILabel!
//    @IBAction func D20BT(_ sender: UIButton) {
//        let randomInt = Int.random(in: 15..<21)
//        d20 = randomInt
//        print(d20)
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count:Int?
        if tableView == self.dice{
              count = x.count
        }
        if tableView == self.Numbers{
            count = nums.count
        }
      return count!
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell:UITableViewCell?
        if tableView == self.dice {
            cell = tableView.dequeueReusableCell(withIdentifier: "d", for: indexPath)
            cell?.textLabel?.text = x[indexPath.row]
        }
        if tableView == self.Numbers {
            cell = tableView.dequeueReusableCell(withIdentifier: "nums", for: indexPath)
            cell?.textLabel?.text = String(nums[indexPath.row])
        }
        return cell!
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        if myIndex == 0 && y == 0{
            randomInt = Int.random(in: 1..<5)
            d4 = randomInt
            output.text = String(d4)
        }
        if myIndex == 0 && y == 1{
            randomInt = Int.random(in: 3..<5)
            d4 = randomInt
            output.text = String(d4)
        }
        if myIndex == 0 && y == 2{
            randomInt = Int.random(in: 1..<2)
            d4 = randomInt
            output.text = String(d4)
        }
        if myIndex == 0 && y == 3{
            randomInt = Int.random(in: 1..<5)
            d4 = randomInt
            output.text = String(d4)
        }
        print(y)
        
        
        
        
        if myIndex == 1 && y == 0{
            randomInt = Int.random(in: 1..<7)
            d6 = randomInt
            output.text = String(d6)
        }
        if myIndex == 1 && y == 1{
            randomInt = Int.random(in: 3..<7)
            d6 = randomInt
            output.text = String(d6)
        }
        if myIndex == 1 && y == 2{
            randomInt = Int.random(in: 1..<4)
            d6 = randomInt
            output.text = String(d6)
        }
        if myIndex == 1 && y == 3{
            randomInt = Int.random(in: 1..<7)
            d6 = randomInt
            output.text = String(d6)
        }
        
        
        
        
        
        if myIndex == 2 && y == 0{
            randomInt = Int.random(in: 1..<11)
            d10 = randomInt
            output.text = String(d10)
        }
        if myIndex == 2 && y == 1{
            randomInt = Int.random(in: 5..<11)
            d10 = randomInt
            output.text = String(d10)
        }
        if myIndex == 2 && y == 2{
            randomInt = Int.random(in: 1..<6)
            d10 = randomInt
            output.text = String(d10)
        }
        if myIndex == 2 && y == 3{
            randomInt = Int.random(in: 1..<11)
            d10 = randomInt
            output.text = String(d10)
        }
        
        
        
        
        
        if myIndex == 3 && y == 0{
            randomInt = Int.random(in: 1..<13)
            d12 = randomInt
            output.text = String(d12)
        }
        if myIndex == 3 && y == 1{
            randomInt = Int.random(in: 6..<13)
            d12 = randomInt
            output.text = String(d12)
        }
        if myIndex == 3 && y == 2{
            randomInt = Int.random(in: 1..<7)
            d12 = randomInt
            output.text = String(d12)
        }
        if myIndex == 3 && y == 3{
            randomInt = Int.random(in: 1..<13)
            d12 = randomInt
            output.text = String(d12)
        }
        
        
        
        
        
        
        
        if myIndex == 4 && y == 0{
            randomInt = Int.random(in: 1..<21)
            d20 = randomInt
            output.text = String(d20)
        }
        if myIndex == 4 && y == 1{
            randomInt = Int.random(in: 11..<21)
            d20 = randomInt
            output.text = String(d20)
        }
        if myIndex == 4 && y == 2{
            randomInt = Int.random(in: 1..<12)
            d20 = randomInt
            output.text = String(d20)
        }
        if myIndex == 4 && y == 3{
            randomInt = Int.random(in: 11..<21)
            d20 = randomInt
            output.text = String(d20)
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        myIndex1 = indexPath.row
        print("hello")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //output.text = ""
        //y = z
        

    }
    override func viewDidAppear(_ animated: Bool) {
        
    }

    func createAlert(title:String, message:String)
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "High", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            self.y = 1
        }))
        
        alert.addAction(UIAlertAction(title: "Normal", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            self.y = 0
        }))
        alert.addAction(UIAlertAction(title: "Low", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            self.y = 2
        }))
        present(alert, animated: true, completion: nil)
    }
}

