//
//  TwitterClient.swift
//  Twitter
//
//  Created by Liang Rui on 10/26/16.
//  Copyright © 2016 Etcetera. All rights reserved.
//

import BDBOAuth1Manager
import UIKit

let twitterConsumerKey = "03KzAjYeVI68G9kZKXHIoXvSh"
let twitterConsumerSecret = "csKH6yuZnuSBX6dCcIN6SVPjzUIIya9kHg1ToXspGT9HuXn9SG"
let twitterBaseURL = URL(string: "https://api.twitter.com")

class TwitterClient: BDBOAuth1SessionManager {
    
    class var sharedInstance: TwitterClient {
        struct Static {
            static let instance = TwitterClient(baseURL: twitterBaseURL, consumerKey: twitterConsumerKey, consumerSecret: twitterConsumerSecret)
        }
        return Static.instance!
    }

}
