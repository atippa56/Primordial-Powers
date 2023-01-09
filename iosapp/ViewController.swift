//
//  ViewController.swift
//  iosapp
//

import UIKit
import BMSCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        NotificationCenter.default.addObserver(self, selector: #selector(didBecomeActive), name: UIApplication.didBecomeActiveNotification, object: nil)
        
    }

    @objc func didBecomeActive(_ notification: Notification) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func visit(_ sender: URLUIBUtton) {
        // the URL is stored in the button as a runtime attribute
        let url = sender.getURL()
        self.openBrowser(url: url)
    }
    
    // Opens the specified URL in the default browser.
    func openBrowser(url: String) {
        guard let theURL = URL(string: url) else {
            let alert = UIAlertController(title: "Invalid URL", message: "This button references an invalid URL. Contact IBM Support.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
            return
        }
        UIApplication.shared.openURL(theURL)
    }

}
