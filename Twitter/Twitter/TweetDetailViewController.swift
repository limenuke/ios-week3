//
//  TweetDetailViewController.swift
//  Twitter
//
//  Created by Liang Rui on 10/31/16.
//  Copyright © 2016 Etcetera. All rights reserved.
//

import UIKit

class TweetDetailViewController: UIViewController {

    @IBAction func onBack(_ sender: AnyObject) {
        dismiss(animated: true) { 
            print ("Dismissed")
        }
    }
    var tweet : Tweet?
    @IBAction func onFave(_ sender: AnyObject) {
    }
    @IBOutlet weak var favesLabel: UILabel!
    @IBOutlet weak var tweetLabel: UILabel!
    @IBOutlet weak var screenNameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var retweetsLabel: UILabel!
    @IBAction func onRetweet(_ sender: AnyObject) {
    }
    
    @IBOutlet weak var profilePic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePic.setImageWith((tweet!.myUser?.profileUrl)!)
        tweetLabel.text = tweet!.text
        screenNameLabel.text = tweet!.myUser?.screenName
        nameLabel.text = tweet!.myUser?.name
        retweetsLabel.text = String(tweet!.retweetCount)
        favesLabel.text = String(tweet!.favoritesCount)
        
        print (" the faves count is  \(tweet!.favoritesCount) ")
        print (" the rt count is \(tweet!.retweetCount)" )
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
