//
//  ComposeViewController.swift
//  Twitter
//
//  Created by Liang Rui on 10/31/16.
//  Copyright © 2016 Etcetera. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController, UITextFieldDelegate {
    var startText : String?
    @IBOutlet weak var textField: UITextField!
    
    /*
    func textFieldShouldEndEditing(_ textField: UITextField) {
        
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
    
    textFieldDidBeginEditing:(UITextField *)textField {
    textField.placeholder = nil;
    }*/
    
    
    @IBAction func onCancel(_ sender: AnyObject) {
        dismiss(animated: true) { 
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.contentVerticalAlignment = UIControlContentVerticalAlignment.top
        if (startText != nil) {
            textField.text = startText
        } else {
            textField.placeholder = "What's happening?"
        }
        textField.becomeFirstResponder()
            // Do any additional setup after loading the view.
    }
    @IBAction func onTweet(_ sender: AnyObject) {
        var params = NSDictionary()
        params = ["status" : textField.text!]
        print(params)
        TwitterClient.sharedInstance.postTweet(params: params, completion: {(error) -> () in
            self.onCancel(self)
        })

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
