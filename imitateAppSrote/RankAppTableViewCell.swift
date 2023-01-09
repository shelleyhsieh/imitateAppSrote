//
//  RankAppTableViewCell.swift
//  imitateAppSrote
//
//  Created by shelley on 2022/12/21.
//

import UIKit

class RankAppTableViewCell: UITableViewCell{
    
    @IBOutlet weak var rankImageView: UIImageView!
    @IBOutlet weak var rankTitleLable: UILabel!
    @IBOutlet weak var rankSubtitleLable: UILabel!
    @IBOutlet weak var rankBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    

    
}
