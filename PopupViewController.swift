//
//  PopupViewController.swift
//  TotalityCorp
//
//  Created by Shweta Gupta on 09/09/23.
//

import Foundation
import UIKit

class PopupViewController: UIViewController {

    @IBOutlet weak var roundSecondView: UIView!
    @IBOutlet weak var roundFirstView: UIView!
    @IBOutlet weak var thirdSubView: UIView!
    @IBOutlet weak var secondSubView: UIView!
    @IBOutlet weak var firstSubView: UIView!
    @IBOutlet weak var firstVew: UIView!
    @IBOutlet weak var secondView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        secondView.isHidden = true
        firstVew.isHidden = false
    }
    
    override func viewDidLayoutSubviews() {
        
    }

    @IBAction func nextBtn(_ sender: Any) {
        let newPosition : CGFloat = 70
        secondView.isHidden =  false
        firstVew.isHidden = true
        UIView.animate(withDuration:0.5){
            self.secondView.frame.origin.x = newPosition
        }
    }
    
}
