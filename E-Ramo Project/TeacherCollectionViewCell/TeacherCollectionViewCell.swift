//
//  TeacherCollectionViewCell.swift
//  E-Ramo Project
//
//  Created by KhaleD HuSsien on 24/04/2024.
//

import UIKit

class TeacherCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var teacherNumber: UILabel!
    @IBOutlet weak var bookingLabel: UILabel!
    @IBOutlet weak var bookBtn: UIButton!
    @IBOutlet weak var imageBooking: UIImageView!
    @IBOutlet weak var bookingBtnView: UIView!
    @IBOutlet weak var teacherSubject: UILabel!
    @IBOutlet weak var teacherPrice: UILabel!
    @IBOutlet weak var teacherName: UILabel!
    @IBOutlet weak var teacherImage: UIImageView!
    @IBOutlet weak var numberView: UIView!
    @IBOutlet weak var teacherView: UIView!
    static let identifier = String(describing: TeacherCollectionViewCell.self)
    
    static func uiNib()-> UINib{
        return UINib(nibName: TeacherCollectionViewCell.identifier, bundle: .main)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        teacherView.layer.cornerRadius = 12
        teacherImage.makeViewCircle()
        bookingBtnView.layer.cornerRadius = 4
        numberView.makeViewCircle()
        numberView.isHidden = true
        self.bookBtn.titleLabel?.text = ""
    }
    @IBAction func bookingBtnTapped(_ sender: UIButton) {
        print("tappppppped")
        if self.numberView.isHidden{
            teacherView.layer.borderColor = #colorLiteral(red: 0.00648642797, green: 0.4581286907, blue: 0.1080923453, alpha: 1)
            teacherView.layer.borderWidth = 1.5
            self.numberView.isHidden = false
            self.imageBooking.image = UIImage(systemName: "checkmark")
            self.bookingLabel.text = "Booked"
            self.bookingBtnView.backgroundColor = #colorLiteral(red: 0.00648642797, green: 0.4581286907, blue: 0.1080923453, alpha: 1)
            self.bookBtn.titleLabel?.text = ""
        }else{
            teacherView.layer.borderColor = UIColor.clear.cgColor
            teacherView.layer.borderWidth = 0
            self.numberView.isHidden = true
            self.imageBooking.image = UIImage(systemName: "calendar")
            self.bookingLabel.text = "Book"
            self.bookingBtnView.backgroundColor = #colorLiteral(red: 0.1620337069, green: 0.4771643281, blue: 0.8168808818, alpha: 1)
            self.bookBtn.titleLabel?.text = ""
        }
    }
}
