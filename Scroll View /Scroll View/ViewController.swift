//
//  ViewController.swift
//  Scroll View
//
//  Created by Mac on 05/05/2021 / india.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySrollView: UIScrollView!
    var tapgesture: UITapGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        tapgesture = UITapGestureRecognizer(target: self, action: #selector(onTap))
        view.addGestureRecognizer(tapgesture)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(onShowKeyboard), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(onHideKeyboard), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc func onTap() {
        view.endEditing(true)
    }
    
    @objc func onShowKeyboard() {
        mySrollView.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 350.0, right: 0)
        
    }
    @objc func onHideKeyboard() {
        mySrollView.contentInset = UIEdgeInsets.zero
        
    }
}

