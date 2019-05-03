//
//  ToDoTableViewCell.swift
//  MVC-Coordinators
//
//  Created by Janet Garcia Velazquez on 5/3/19.
//  Copyright © 2019 Globant. All rights reserved.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {

    //MARK: IBOutlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var isCompleteButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
