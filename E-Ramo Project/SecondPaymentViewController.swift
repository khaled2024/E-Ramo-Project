//
//  SecondPaymentViewController.swift
//  E-Ramo Project
//
//  Created by KhaleD HuSsien on 24/04/2024.
//

import UIKit

class SecondPaymentViewController: UIViewController {
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var mobileWalletView: UIView!
    @IBOutlet weak var processingView: UIView!
    
    @IBOutlet weak var addOtherCardBtn: UIButton!
    @IBOutlet weak var visaDetails: UIView!
    @IBOutlet weak var creditDepitCardView: UIView!
    @IBOutlet weak var confirmBtn: UIButton!
    @IBOutlet weak var cashPaymentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpDesign()
        
    }
    func setUpDesign(){
        cashPaymentView.setCorners(corner: 8)
        creditDepitCardView.setCorners(corner: 8)
        visaDetails.setCorners(corner: 12)
        addOtherCardBtn.setCorners(corner: 8)
        mobileWalletView.setCorners(corner: 8)
        processingView.setCorners(corner: 12)
        confirmBtn.setCorners(corner: 8)
        backBtn.setCorners(corner: 8)

    }
    

    @IBAction func backBtnTapped(_ sender: UIButton) {
        let paymentVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PaymentViewController")as! PaymentViewController
        paymentVC.modalPresentationStyle = .fullScreen
        self.present(paymentVC, animated: true)
    }
    @IBAction func confirmBtnTapped(_ sender: UIButton) {
        let thanksVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PaymentThanksViewController")as! PaymentThanksViewController
        thanksVC.modalPresentationStyle = .fullScreen
        self.present(thanksVC, animated: true)
    }
    
  
}
