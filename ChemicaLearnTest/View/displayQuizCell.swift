//
//  displayQuizCell.swift
//  ChemicaLearn
//
//  Created by Rahul Ramjeawon on 6/2/24.
//

import UIKit

class displayQuizCell: UITableViewCell {

    @IBOutlet weak var leftView: UIView!
    @IBOutlet weak var rightView: UIView!
    @IBOutlet weak var quizImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
