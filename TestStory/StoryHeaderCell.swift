//
//  StoryHeaderCell.swift
//  TestStory
//
//  Created by Selvam Srinivasan on 7/21/20.
//  Copyright © 2020 Selvam Srinivasan. All rights reserved.
//

import Foundation
import UIKit


/// Story Header View for the Story Table
class StoryHeader: UITableViewHeaderFooterView {
    let title = UILabel()
    let leftImageView = UIImageView()
    let rightImageView = UIImageView()

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configureContents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureContents() {
        
        leftImageView.translatesAutoresizingMaskIntoConstraints = false
        rightImageView.translatesAutoresizingMaskIntoConstraints = false
        title.translatesAutoresizingMaskIntoConstraints = false
        
        leftImageView.backgroundColor = UIColor.systemIndigo
        rightImageView.backgroundColor = UIColor.systemIndigo
        
        leftImageView.layer.cornerRadius = 32
        rightImageView.layer.cornerRadius = 32

        contentView.addSubview(leftImageView)
        contentView.addSubview(title)
        contentView.addSubview(rightImageView)
        
        contentView.backgroundColor  = .white
        contentView.layer.borderWidth = 1.0
        contentView.layer.borderColor = UIColor.gray.cgColor
        
        NSLayoutConstraint.activate([
            leftImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            leftImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            leftImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            leftImageView.widthAnchor.constraint(equalToConstant: 68),
            leftImageView.heightAnchor.constraint(equalToConstant: 68),
            rightImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            rightImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            rightImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            rightImageView.widthAnchor.constraint(equalToConstant: 68),
            rightImageView.heightAnchor.constraint(equalToConstant: 68),
            title.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            title.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            title.heightAnchor.constraint(equalToConstant: 30),
            title.widthAnchor.constraint(equalToConstant: 70)
        ])
    }
}
