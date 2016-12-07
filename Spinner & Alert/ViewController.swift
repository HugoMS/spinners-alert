//
//  ViewController.swift
//  Spinner & Alert
//
//  Created by Hugo Morelli on 12/7/16.
//  Copyright © 2016 Hugo Morelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    var activityIndicator = UIActivityIndicatorView()
    //MARK: Actions

    @IBAction func createAlert(_ sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Hey There!", message: "Are you sure?", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            
            print("button pressed")
            
            self.dismiss(animated: true, completion: nil)
            
            
        }))
        
        alertController.addAction(UIAlertAction(title: "NO", style: .default, handler: { (action) in
            
            print("No button pressed")
            
            self.dismiss(animated: true, completion: nil)
            
            
        }))

        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func pauseApp(_ sender: AnyObject) {
        
        activityIndicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        
        activityIndicator.center = self.view.center
        
        activityIndicator.hidesWhenStopped = true
        
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        
        view.addSubview(activityIndicator)
        
        activityIndicator.startAnimating()
        
        //UIApplication.shared.beginIgnoringInteractionEvents()
    }
    
    @IBAction func restoreApp(_ sender: AnyObject) {
        
        activityIndicator.stopAnimating()
        
        //UIApplication.shared.endIgnoringInteractionEvents()

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

