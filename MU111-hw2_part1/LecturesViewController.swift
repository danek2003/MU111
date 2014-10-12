//
//  ViewController.swift
//  MU111-hw2_part1
//
//  Created by Danilenko Evgeny on 11.10.14.
//  Copyright (c) 2014 Danilenko Evgeny. All rights reserved.
//

import UIKit

class LecturesViewController: UIViewController {
    @IBOutlet weak var LoginTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var LoginViewInfo: UITextView!
    

    @IBAction func LoginButton(sender: AnyObject) {
       
        LoginViewInfo.text = "логин: \(LoginTextField.text)  Пароль:  \(PasswordTextField.text)"
        println("ввел логин: \(self.LoginTextField.text) и пароль: \(self.PasswordTextField.text)")
        var (Login: String,Password:String) = (toString(LoginTextField.text),toString(PasswordTextField.text))
        
        if Login == "123" && Password == "123"
        {
            /* Не ясно как дождаться нажатия OK и потом уже идти на второй скрин
            
            var myAlertView = UIAlertView()
            myAlertView.title = "Info"
            myAlertView.message = "ввел логин: \(self.LoginTextField.text) и пароль: \(self.PasswordTextField.text)"
            myAlertView.addButtonWithTitle("ok")
            myAlertView.show()
            */
            self.performSegueWithIdentifier("login_successfull", sender: self)
        }
    }
    
    //Отрабатываем нажатие кнопки DONE на клавиатуре и скрываем ее
    @IBAction func End_enter(sender: UITextField) {
        self.PasswordTextField.resignFirstResponder()
        self.LoginTextField.resignFirstResponder()
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   // При нажатии на Tap Gesture Recognizer( в любое место-заканчиваем вводл)
    @IBAction func BackgroundTap(sender: AnyObject) {
        self.view.endEditing(true)
    }

}


