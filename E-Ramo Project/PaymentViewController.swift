//
//  PaymentViewController.swift
//  E-Ramo Project
//
//  Created by KhaleD HuSsien on 24/04/2024.
//

import UIKit

class PaymentViewController: UIViewController {
    @IBOutlet weak var processingView: UIView!
    
    @IBOutlet weak var confirmBtn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var payView: UIView!
    @IBOutlet weak var invoicesDetailsView: UIView!
    @IBOutlet weak var detail2View: UIView!
    @IBOutlet weak var detail1View: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        invoicesDetailsView.setCorners(corner: 8)
        detail2View.setCorners(corner: 15)
        detail1View.setCorners(corner: 15)
        processingView.setCorners(corner: 12)
        payView.setCorners(corner: 8)
        backBtn.setCorners(corner: 8)
        confirmBtn.setCorners(corner: 8)
    }
    
    @IBAction func confirmBtnTapped(_ sender: UIButton) {
        let payment2VC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondPaymentViewController")as! SecondPaymentViewController
        payment2VC.modalPresentationStyle = .fullScreen
        self.present(payment2VC, animated: true)
    }
    @IBAction func backBtnTapped(_ sender: UIButton) {
        let teacherVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TeacherViewController")as! TeacherViewController
        teacherVC.modalPresentationStyle = .fullScreen
        self.present(teacherVC, animated: true)
        
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
