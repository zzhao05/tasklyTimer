//
//  ViewController.swift
//  tasklyNav
//
//  Created by Scholar on 8/16/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(_ sender: UIButton) {
        
        let vc = UIViewController()
        vc.view.backgroundColor = .green
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

