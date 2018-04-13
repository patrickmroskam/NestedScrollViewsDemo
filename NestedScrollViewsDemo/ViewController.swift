//
//  ViewController.swift
//  NestedScrollViewsDemo
//
//  Created by Patrick Roskam on 4/12/18.
//  Copyright © 2018 PatrickMRoskam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    
    var catagories = ["Mountains", "Desert", "Ocean", "Forest", "People", "Animals", "Buildings", "Plants"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return catagories.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return catagories[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CategoryRow
        return cell
    }

}

