//
//  ViewController.swift
//  Wits&Wagers
//
//  Created by Sasha Fujiwara on 2021/03/26.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    @IBOutlet weak var WitsAndWagersImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.yellow
        ///Timer that makes the image blink.
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { (Timer) in
            if self.WitsAndWagersImage.isHidden == false {
                self.WitsAndWagersImage.isHidden = true
            } else if self.WitsAndWagersImage.isHidden == true {
                self.WitsAndWagersImage.isHidden = false
            }
        }
    }
    
    @IBAction func tapOnImage(_ sender: UITapGestureRecognizer) {
        if let url = URL(string: "https://en.wikipedia.org/wiki/Wits_and_Wagers") {
            let svc = SFSafariViewController(url: url)
            present(svc, animated: true, completion: nil)
        }
    }
    
    
    


}

