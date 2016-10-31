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
    var timestamp: NSDate?
    var retweetCount : Int = 0
    var favoritesCount : Int = 0
    
    init(dictionary : NSDictionary) {
        text = dictionary["text"] as? String
        
        retweetCount = (dictionary["retweet_count"] as? Int) ?? 0
        favoritesCount = (dictionary["favourites_count"] as? Int) ?? 0
        
        let timestampString = dictionary["created_at"] as? String
        if let timestampString = timestampString {
            let formatter = DateFormatter()
            formatter.dateFormat = "EEE MMM d HH:mm:ss Z y"
            timestamp = formatter.date(from: timestampString) as NSDate?
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
