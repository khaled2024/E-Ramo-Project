//
//  ViewController.swift
//  E-Ramo Project
//
//  Created by KhaleD HuSsien on 24/04/2024.
//

import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var collectionViewView: UIView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var subjectCollectionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var nextBtnTapped: UIButton!
    var tapped =  false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setDesign()
        setUpDelegate()
    }
    func setDesign(){
        topView.roundCorners(corners: [.bottomLeft,.bottomRight], radius: 50)
        nextBtn.layer.cornerRadius = 8
        collectionViewView.layer.cornerRadius = 12
    }
    func setUpDelegate(){
        subjectCollectionView.delegate = self
        subjectCollectionView.dataSource = self
        subjectCollectionView.register(SubjectCollectionViewCell.uiNib(), forCellWithReuseIdentifier: SubjectCollectionViewCell.identifier)
    }
    @IBAction func nextBtnTapped(_ sender: UIButton) {
        let teacherVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TeacherViewController")as! TeacherViewController
        teacherVC.modalPresentationStyle = .fullScreen
        self.present(teacherVC, animated: true)
    }
}
// MARK: - UICollectionViewDelegate
extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return subjects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SubjectCollectionViewCell.identifier, for: indexPath)as! SubjectCollectionViewCell
        let subject = subjects[indexPath.row]
        cell.subjectImage.image = subject.Image
        cell.subkectTitle.text = subject.title
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let _ = collectionView.dequeueReusableCell(withReuseIdentifier: SubjectCollectionViewCell.identifier, for: indexPath)as! SubjectCollectionViewCell
        print("tapped :)")
        
//        if cell.correctView.isHidden == true {
//            cell.correctView.isHidden = false
//        }else{
//            cell.correctView.isHidden = true
//        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.1, height: 160)
    }
}
