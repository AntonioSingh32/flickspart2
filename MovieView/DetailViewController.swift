//
//  DetailViewController.swift
//  MovieView
//
//  Created by Clark Kent on 2/1/16.
//  Copyright © 2016 Antonio Singh. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var posterImageView: UIImageView!

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var overviewLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
   
    @IBOutlet weak var scrollView: UIScrollView!
    var movie:NSDictionary!
    
    @IBOutlet weak var infoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize (width: scrollView.frame.size.width, height: infoView.frame.origin.y + infoView.frame.size.height)
        
        let title = movie["title"] as! String
        
        titleLabel.text = title
        
        let overview = movie["overview"]
        
        overviewLabel.text = overview as? String
        
        overviewLabel.sizeToFit()
        
        let date = movie["release_date"] as! String
        
        dateLabel.text = date
        
        
        let baseUrl = "http://image.tmdb.org/t/p/w500"
        
        if let posterPath = movie ["poster_path"] as? String {
            
            let imageUrl = NSURL(string: baseUrl + posterPath)
            
            _ = NSURLRequest(URL: NSURL(string: baseUrl + posterPath)!)
            
            posterImageView.setImageWithURL(imageUrl!)
            
        }
        
        print (movie)

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
