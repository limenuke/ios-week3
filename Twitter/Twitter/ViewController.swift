//
//  ViewController.swift
//  Twitter
//
//  Created by Liang Rui on 10/25/16.
//  Copyright © 2016 Etcetera. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

class ViewController: UIViewController {

    @IBAction func onLogin(_ sender: AnyObject) {
        TwitterClient.sharedInstance.requestSerializer.removeAccessToken()
        TwitterClient.sharedInstance.fetchRequestToken(withPath: "oauth/request_token", method: "GET", callbackURL: URL(string: "cptwitterdemo://oauth"), scope: nil, success: {
            (requestToken:BDBOAuth1Credential?) -> Void in
                if (requestToken != nil) {
                    print ("Got the request token!")
                    let myToken = requestToken!
                    print ("The token is \(myToken.token)")
                    print("https://api.twitter.com/oauth/authorize?oauth_token=\(myToken.token!)")
                    var authURL = URL(string:"https://api.twitter.com/oauth/authorize?oauth_token=\(myToken.token!)")
                    UIApplication.shared.open(authURL!, options: [:], completionHandler: {
                        (completed: Bool) -> Void in
                            if (completed) {
                                print ("authorization completed")
                            } else {
                                print ("not completeD")
                            }
                    })
                }
            }, failure: {
            (myError: Error?) -> Void in
                print ("Failed to get request token")
            })
        
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

