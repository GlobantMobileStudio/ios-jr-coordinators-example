//
//  ToDoTableViewCell.swift
//  MVC-Coordinators
//
//  Created by Janet Garcia Velazquez on 5/3/19.
//  Copyright © 2019 Globant. All rights reserved.
//

import UIKit

//MARK: - Cell protocol
@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoTableViewCell)
}

class ToDoTableViewCell: UITableViewCell {
    
    //MARK: Variables
    var delegate: ToDoCellDelegate?
    
    //MARK: IBOutlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var isCompleteButton: UIButton!
    
    //MARK: IBActions
    @IBAction func completeButtonTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
