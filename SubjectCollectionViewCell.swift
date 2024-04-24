//
//  SubjectCollectionViewCell.swift
//  E-Ramo Project
//
//  Created by KhaleD HuSsien on 24/04/2024.
//

import UIKit

class SubjectCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var correctView: UIView!
    @IBOutlet weak var subjectimageView: UIView!
    @IBOutlet weak var subjectImage: UIImageView!
    @IBOutlet weak var subkectTitle: UILabel!
    @IBOutlet weak var subjectView: UIView!
    
    static let identifier = String(describing: SubjectCollectionViewCell.self)
    static func uiNib()-> UINib{
        return UINib(nibName: SubjectCollectionViewCell.identifier, bundle: .main)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        subjectView.roundCorners(corners: .allCorners, radius: 12)
        subjectimageView.roundCorners(corners: .allCorners, radius: 12)
        subjectView.layer.borderColor = UIColor.systemGray2.cgColor
        subjectView.layer.borderWidth = 1
        correctView.roundCorners(corners: .allCorners, radius: 12)
        correctView.isHidden = true
    }
    @IBAction func checkTapped(_ sender: UIButton) {
        if correctView.isHidden == true {
            correctView.isHidden = false
        }else{
            correctView.isHidden = true
        }
    }
}
