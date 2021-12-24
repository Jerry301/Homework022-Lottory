//
//  BallTableViewCell.swift
//  Homework022
//
//  Created by Chun-Yi Lin on 2021/12/23.
//

import UIKit

class BallTableViewCell: UITableViewCell {
    
    @IBOutlet weak var seriesLabel: UILabel!
    @IBOutlet weak var ball1ImageView: UIImageView!
    @IBOutlet weak var ball2ImageView: UIImageView!
    @IBOutlet weak var ball3ImageView: UIImageView!
    @IBOutlet weak var ball4ImageView: UIImageView!
    @IBOutlet weak var ball5ImageView: UIImageView!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
