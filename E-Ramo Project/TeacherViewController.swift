//
//  TeacherViewController.swift
//  E-Ramo Project
//
//  Created by KhaleD HuSsien on 24/04/2024.
//

import UIKit

class TeacherViewController: UIViewController ,UISearchBarDelegate{
    @IBOutlet weak var teacherTextField: UITextField!
    @IBOutlet weak var confirmBtn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var teacherMainView: UIView!
    @IBOutlet weak var searchBarMainView: UIView!
    @IBOutlet weak var teacherCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teacherMainView.roundCorners(corners: [.bottomLeft,.bottomRight], radius: 50)
        searchBarMainView.layer.cornerRadius = 12
        searchBarMainView.layer.borderColor = UIColor.systemGray2.cgColor
        searchBarMainView.layer.borderWidth = 1
        // MARK: - Comments
        //        teacherSearchBar.searchTextField.leftView = nil
        //        teacherSearchBar.barTintColor = .red
        //        teacherSearchBar.backgroundColor = .lightGray.withAlphaComponent(0.0)
        
        // Change the default color of the search bar
        //        teacherSearchBar.barTintColor = UIColor.white // Change this color to whatever you want
        
        // Change the text color of the search bar
        //        teacherSearchBar.searchTextField.textColor = UIColor.white // Change this color to whatever you want
        
        // Change the placeholder color of the search bar
        //        teacherSearchBar.searchTextField.attributedPlaceholder = NSAttributedString(string: "Search your preferred teachers", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        //
        if let placeholderLabel = teacherTextField.value(forKey: "placeholderLabel") as? UILabel {
            placeholderLabel.font = UIFont(name: "Arial", size: 14) // Change font name and size as needed
        }
        // collection delegate
        teacherCollectionView.delegate = self
        teacherCollectionView.dataSource = self
        teacherCollectionView.register(TeacherCollectionViewCell.uiNib(), forCellWithReuseIdentifier: TeacherCollectionViewCell.identifier)
        
        // btns
        confirmBtn.layer.cornerRadius = 8
        backBtn.layer.cornerRadius = 8
    }
    @IBAction func backBtnTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func confirmBtnTapped(_ sender: UIButton) {
        let paymentVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PaymentViewController")as! PaymentViewController
        paymentVC.modalPresentationStyle = .fullScreen
        self.present(paymentVC, animated: true)
    }
    
    @IBAction func backTapped(_ sender: UIButton) {
        let subjectVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")as! ViewController
        subjectVC.modalPresentationStyle = .fullScreen
        self.present(subjectVC, animated: true)
    }
    
    
    
}
// MARK: - Extensions
extension TeacherViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teachers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TeacherCollectionViewCell.identifier, for: indexPath)as! TeacherCollectionViewCell
        cell.teacherNumber.text = String(indexPath.row + 1)
        let teacher = teachers[indexPath.row]
        cell.teacherImage.image = teacher.Image
        cell.teacherName.text = teacher.title
        cell.teacherPrice.text = teacher.price
        cell.teacherSubject.text = teacher.subject
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let _ = collectionView.dequeueReusableCell(withReuseIdentifier: TeacherCollectionViewCell.identifier, for: indexPath)as! TeacherCollectionViewCell
        print("Tapped \(indexPath.row)")
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.1, height: 220)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
