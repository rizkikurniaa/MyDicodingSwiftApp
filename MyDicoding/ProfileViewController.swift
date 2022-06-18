//
//  ViewController.swift
//  MyDicoding
//
//  Created by RIZKI on 01/06/22.
//

import UIKit

class ProfileViewController: UIViewController {
    private var isFollow = false
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var followButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCircleImageView()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func setFollowed(_ sender: Any) {
        isFollow = !isFollow
          followButton.setTitle(isFollow ? "Following" : "Follow", for: .normal)
    }
    
    private func setupCircleImageView() {
        profileImageView.layer.borderWidth = 1 // Menentukan lebar dari border/garis batas.
         
        profileImageView.layer.masksToBounds = false // Menentukan apakah perlu melakukan masking atau tidak.
         
        profileImageView.layer.borderColor = UIColor.black.cgColor // Menentukan warna border.
         
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2 // Menentukan apakah sudutnya akan membulat (rounded) atau tidak.
         
        profileImageView.clipsToBounds = true // Menentukan apakah subview terbatas pada batas tampilan atau tidak.
      }
}

