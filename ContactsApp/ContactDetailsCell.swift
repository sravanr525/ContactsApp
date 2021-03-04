//
//  ContactDetailsCell.swift
//  ContactsApp
//
//  Created by Spurge on 04/03/21.
//

import UIKit

class ContactDetailsCell: UITableViewCell {
    
    @IBOutlet weak var viewRef: UIView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
