//
//  LoginViewController.swift
//  Twitter
//
//  Created by Liang Rui on 10/29/16.
//  Copyright © 2016 Etcetera. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

class LoginViewController: UIViewController {

    @IBAction func onLogin(_ sender: AnyObject) {
        let client = TwitterClient.sharedInstance
        client.login(success: {
            self.performSegue(withIdentifier: "loginSegue", sender: nil)
        }) { (error: NSError) in
            print ("Error: \(error.localizedDescription)")
        }
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
