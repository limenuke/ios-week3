//
//  Tweet.swift
//  Twitter
//
//  Created by Liang Rui on 10/29/16.
//  Copyright © 2016 Etcetera. All rights reserved.
//

import UIKit

class Tweet: NSObject {
    var text : String?
    var timestamp: Date?
    var retweetCount : Int = 0
    var favoritesCount : Int = 0
    var isRetweet : Bool?
    var myUser : User?
    init(dictionary : NSDictionary) {
        text = dictionary["text"] as? String
        /*isRetweet = dictionary["retweeted"]
        if isRetweet! == true {
            
        }*/
        retweetCount = (dictionary["retweet_count"] as? Int) ?? 0
        self.myUser = User(dictionary: dictionary["user"] as! NSDictionary)
        favoritesCount = (myUser?.favoritesCt) ?? 0
        
        print ("My user's name: \(myUser?.name)")
        print ("My user's screen name: \(myUser?.screenName)")
        
        let timestampString = dictionary["created_at"] as? String
        if let timestampString = timestampString {
            let formatter = DateFormatter()
            formatter.dateFormat = "EEE MMM d HH:mm:ss Z y"
            timestamp = formatter.date(from: timestampString) as Date?
        }
        
    }
    
    class func tweetsWithArray(dictionaries: [NSDictionary]) -> [Tweet]{
        var tweets = [Tweet]()
        
        for thisDictionary in dictionaries {
            let tweet = Tweet(dictionary: thisDictionary)
            tweets.append(tweet)
        }
        return tweets
    }
    
    
}
