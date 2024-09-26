//
//  ViewController.swift
//  UMC_Kream_Clonecoding
//
//  Created by 송재곤 on 9/26/24.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = rootView
    }

    private lazy var rootView: LoginView = {
        let rootView = LoginView()
        
        return rootView
    }()

}

