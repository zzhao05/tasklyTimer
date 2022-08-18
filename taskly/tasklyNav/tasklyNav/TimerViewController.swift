//
//  TimerViewController.swift
//  tasklyNav
//
//  Created by Scholar on 8/17/22.
//

import UIKit
import UserNotifications


class TimerViewController: UIViewController {

    
    @IBOutlet weak var timeTextField: UITextField!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    var time = 0
    
    var timer = Timer ()
    
    
    
    @IBAction func setButton(_ sender: UIButton) {
        if let minutes = timeTextField.text{
            
            timerLabel.text = "\(minutes):00"
            
            
            //time = timeTextField
            time = (Int(minutes) ?? 0 )*60
//        if let setTime = timeTextField.text{
//            var numSetTime = (Int (setTime) ?? 0)*60
//            timerLabel.text = numSetTime.text
            
            
            
        }
    }
    
    
    
    
    @IBAction func startButton(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.action), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func pauseButton(_ sender: UIButton) {
        timer.invalidate()
    }
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        timer.invalidate()
        time = 0
        timerLabel.text = "0:00"
    }
    
    @objc func action(){
        if time > 0 {
            time -= 1
        }
        else if time == 0 {
            time = 0
            showPopUp()
            timer.invalidate()
            
        }
        
        // Make time look pretty
        var minutes = time / 60
        var seconds = time % 60
        
        if seconds < 10 {
            timerLabel.text = "\(minutes):0\(seconds)"
        }
        else{
            timerLabel.text = "\(minutes):\(seconds)"
        }
        
       
    }
    
    func showPopUp() {
        let alert = UIAlertController(title: "Timer Done!", message: "YAY!", preferredStyle: .alert)
        
        let okayAction = UIAlertAction(title: "Ok", style: .default){
            (action)in
            print(action)
        }
        
        alert.addAction(okayAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    
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
