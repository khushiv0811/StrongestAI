//
//  Card_TableViewCell.swift
//  StrongestAI
//
//  Created by Kushboo Patel on 6/6/22.
//

import UIKit

class Card_TableViewCell: UITableViewCell {
    
    @IBOutlet weak var label_cardsuit : UILabel!
    @IBOutlet weak var label_cardname : UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setupcell(currentcard : CardModel)
    {
        label_cardsuit.text = currentcard.cardSuit.description.unicode
        if currentcard.cardSuit == .Hearts || currentcard.cardSuit == .Diamonds
        {
            label_cardsuit.textColor = .red
        }
        else
        {
            label_cardsuit.textColor = .black
        }
        label_cardname.text = String(currentcard.cardValue.description)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


extension String {
    var unicode: String? {
        if let charCode = UInt32(self, radix: 16),
           let unicode = UnicodeScalar(charCode) {
            let str = String(unicode)
            return str
        }
        return nil
    }
}
