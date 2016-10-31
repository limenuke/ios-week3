//
//  TweetTableViewCell.swift
//  Twitter
//
//  Created by Liang Rui on 10/30/16.
//  Copyright © 2016 Etcetera. All rights reserved.
//

import UIKit

class TweetTableViewCell: UITableViewCell {

    @IBOutlet weak var tweetPic: UIImageView!
    @IBOutlet weak var tweetName: UILabel!
    @IBOutlet weak var tweetScreenname: UILabel!
    @IBOutlet weak var tweetText: UILabel!
    @IBOutlet weak var tweetTimeAgo: UILabel!
    @IBOutlet weak var faveCount: UILabel!
    @IBOutlet weak var rtCount: UILabel!
    
    @IBOutlet weak var rtImg: UIImageView!
    @IBOutlet weak var faveImg: UIImageView!
    
    var tweet: Tweet! {
        didSet {
            let thisUser = tweet.myUser!

            tweetPic.setImageWith(thisUser.profileUrl!)
            tweetName.text = thisUser.name
            tweetScreenname.text = "@\(thisUser.screenName!)"
            tweetText.text = tweet.text
            faveCount.text = String(tweet.favoritesCount)
            rtCount.text = String(tweet.retweetCount)
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm"
            tweetTimeAgo.text = dateFormatter.string(from: tweet.timestamp!)
            faveImg.image = UIImage(named: "heart")
            rtImg.image = UIImage(named:"rt")
            /*
             //cell.tweetTimeAgo = thisTweet.timestamp
            */
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
