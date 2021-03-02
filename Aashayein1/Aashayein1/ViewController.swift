//
//  ViewController.swift
//  Aashayein1
//
//  Created by Aman Joshi on 27/01/21.
//

import UIKit
import MessageUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func fb(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.facebook.com/aashayein4hope")! as URL, options: [:],completionHandler: nil)
    }
    

    @IBAction func whats(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://wa.me/+919461030730")! as URL, options: [:],completionHandler: nil)
    }
    
    
    @IBAction func insta(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://instagram.com/aashayein_a_ray_of_hope?igshid=x0om773egmzl")! as URL, options: [:],completionHandler: nil)
    }
    
    @IBAction func mail(_ sender: UIButton) {
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail(){
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else{
            self.showSendMailErrorAlert()
        }
    }
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.setToRecipients(["aashayein4cause@gmail.com"])
        mailComposerVC.setSubject("Aashyaein...a Ray of hope.!")
        
        return mailComposerVC
    }
    func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertController(title: "Could Not Send the Mail", message: "Something's Wrong with your device.", preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "ok",style: .default,handler: nil)
        sendMailErrorAlert.addAction(dismiss)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
    }
}

