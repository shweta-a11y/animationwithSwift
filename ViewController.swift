//
//  ViewController.swift
//  TotalityCorp
//
//  Created by Shweta Gupta on 09/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var middleLbl: UILabel!
    @IBOutlet weak var topLbl: UILabel!
    @IBOutlet weak var loadBtn: UIButton!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBAction func DownloadBtn(_ sender: Any) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc : PopupViewController = storyboard.instantiateViewController(withIdentifier: "PopupViewController") as! PopupViewController
        vc.view.backgroundColor = UIColor(white: 0, alpha: 0.4)
        let navController = UINavigationController(rootViewController: vc)
        navController.providesPresentationContextTransitionStyle = true
        navController.definesPresentationContext = true
        navController.modalTransitionStyle = .crossDissolve
        navController.modalPresentationStyle = .overCurrentContext
        
        present(navController, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let newPosition : CGFloat = 0
        middleLbl.isHidden = true
        self.navigationItem.setHidesBackButton(true, animated: true)
        loadBtn.layer.cornerRadius = 8.0
        UIView.animate(withDuration:0.5){
            self.secondView.frame.origin.x = newPosition + 100
            self.firstView.frame.origin.x = newPosition
            self.lbl.frame.origin.x = newPosition + 10
            self.middleLbl.frame.origin.x = newPosition + 10
            self.topLbl.frame.origin.x = newPosition + 100
            self.loadBtn.frame.origin.x = newPosition + 50
        }
        UIView.transition(with: middleLbl, duration: 0.4, options: .transitionCrossDissolve ,animations: {
            self.middleLbl.isHidden = false
        })
    }


}

