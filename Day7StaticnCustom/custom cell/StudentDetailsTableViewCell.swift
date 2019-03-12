//
//  StudentDetailsTableViewCell.swift
//  Day7StaticnCustom
//
//  Created by MacStudent on 2019-03-11.
//  Copyright © 2019 Emil. All rights reserved.
//

import UIKit

class StudentDetailsTableViewCell: UITableViewCell {

    @IBOutlet weak var lblStudentFirstName: UILabel!
    @IBOutlet weak var lblStudentLastName: UILabel!
    @IBOutlet weak var lblStudentGender: UILabel!
    @IBOutlet weak var lblResult: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
