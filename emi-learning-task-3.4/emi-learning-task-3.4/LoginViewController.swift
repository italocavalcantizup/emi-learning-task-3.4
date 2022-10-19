//
//  ViewController.swift
//  emi-learning-task-3.4
//
//  Created by Italo cavalcanti on 19/10/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginBotaoPressionado(_ sender: UIButton) {
        showAlertMessage(title: "Logando", message: "Fazendo login na sua conta...")
    }
    
    @IBAction func recuperarSenhaBotaoPressionado(_ sender: UIButton) {
        showAlertMessage(title: "Redefinir senha", message: "Enviamos um email para \(emailTextField.text!).\nSiga as instruções para criar uma nova senha segura.")
    }
    
    func showAlertMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
        self.present(alert, animated: true)
    }

}

