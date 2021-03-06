//
//  TableViewCell.swift
//  PassDataWithProtocol
//
//  Created by Mohsen Abdollahi on 5/7/19.
//  Copyright © 2019 Mohsen Abdl. All rights reserved.
//

import UIKit


protocol TableViewNew {
    func onClickCell(index: Int)
}


class TableViewCell: UITableViewCell {
    
    
    var cellDelegate: TableViewNew?
    var index: IndexPath?
    
    
    @IBOutlet weak var mylabelInCell: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func ClickMe(_ sender: Any) {
        
        cellDelegate?.onClickCell(index: (index?.row)!)
  
        
    }

}
