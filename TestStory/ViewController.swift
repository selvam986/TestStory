//
//  ViewController.swift
//  TestStory
//
//  Created by Selvam Srinivasan on 7/20/20.
//  Copyright © 2020 Selvam Srinivasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var data = ["textTexttextTexttext", "textTexttextTexttextTexttextTexttext", "textTexttextTexttextTexttext"]
    
    @IBOutlet weak var storyTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        storyTableView.dataSource = self
        storyTableView.delegate = self
        
        storyTableView.rowHeight = UITableView.automaticDimension
        storyTableView.estimatedRowHeight = 600
        
        storyTableView.register(StoryHeader.self, forHeaderFooterViewReuseIdentifier: "sectionHeader")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoryCell", for: indexPath) as? StoryTableViewCell
        let storyCell = cell ?? StoryTableViewCell()
        storyCell.storyImageView.image = UIImage()
        storyCell.storyLabel.text = data[indexPath.row]
        return storyCell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier:
                    "sectionHeader") as! StoryHeader
        view.title.text = "Header"
        view.leftImageView.image = UIImage()
        view.rightImageView.image = UIImage()

        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100.0
    }
}

