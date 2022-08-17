//
//  TimerViewController.swift
//  tasklyNav
//
//  Created by Scholar on 8/17/22.
//

import UIKit


class TimerViewController: UIViewController {

   
    @IBOutlet weak var timerLabel: UILabel!
    
    var time = 10
    
    var timer = Timer ()
    
    @IBAction func startButton(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.action), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func pauseButton(_ sender: UIButton) {
        timer.invalidate()
    }
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        timer.invalidate()
        time = 0
        timerLabel.text = "0"
    }
    
    @objc func action(){
        if time > 0 {
            time -= 1
        }
        else if time == 0 {
            time = 0
        }
        timerLabel.text = String(time)
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
