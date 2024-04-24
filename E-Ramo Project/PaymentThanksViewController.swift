//
//  PaymentThanksViewController.swift
//  E-Ramo Project
//
//  Created by KhaleD HuSsien on 24/04/2024.
//

import UIKit

class PaymentThanksViewController: UIViewController {
    @IBOutlet weak var browseHomeBtn: UIButton!
    
    @IBOutlet weak var processingView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        browseHomeBtn.layer.cornerRadius = 8
        browseHomeBtn.layer.borderWidth = 1
        browseHomeBtn.layer.borderColor = UIColor.systemGray.cgColor
        processingView.setCorners(corner: 12)
    }
    @IBAction func homeBtnTapped(_ sender: UIButton) {
        let homeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")as! ViewController
        homeVC.modalPresentationStyle = .fullScreen
        self.present(homeVC, animated: true)
    }
    @IBAction func backBtnTapped(_ sender: UIButton) {
        let paymentVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondPaymentViewController")as! SecondPaymentViewController
        paymentVC.modalPresentationStyle = .fullScreen
        self.present(paymentVC, animated: true)
    }
    

}
