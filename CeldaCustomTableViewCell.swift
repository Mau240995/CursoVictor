//
//  CeldaCustomTableViewCell.swift
//  CursoVictor
//
//  Created by user217123 on 8/3/22.
//

import UIKit

class CeldaCustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblColor: UILabel!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var imgAuto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
