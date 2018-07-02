//
//  ViewController.swift
//  App B
//
//  Created by Andrii Kurshyn on 01.07.2018.
//  Copyright © 2018 Andrii Kurshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NotificationCenter.default.addObserver(self, selector: #selector(appDidReciveUrlNotification(_:)), name: .AppDidReciveUrl, object: nil)
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func handleGetText() {
        let url = URL(string: "appa://text")!
        let bool = UIApplication.shared.canOpenURL(url)
        print("canOpenURL \(bool)")
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    @objc func appDidReciveUrlNotification(_ notification: Notification) {
        label.text = notification.object as? String
    }


}

