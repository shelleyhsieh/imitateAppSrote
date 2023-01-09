//
//  multiUseTableViewCell.swift
//  imitateAppSrote
//
//  Created by shelley on 2022/12/19.
//


import UIKit

class multiUseTableViewCell: UITableViewCell {
    
   
    @IBOutlet weak var appNameLable: UILabel!
    @IBOutlet weak var classInfoLable: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var getBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
