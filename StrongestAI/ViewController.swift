//
//  ViewController.swift
//  StrongestAI
//
//  Created by Kushboo Patel on 6/6/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!

    var CardDeck = DeckModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

        CardDeck.createDeck()
        
        
    }

    //MARK: - Table view delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CardDeck.deck.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Card_TableViewCell", for: indexPath) as! Card_TableViewCell
        
        cell.setupcell(currentcard: CardDeck.deck[indexPath.row])
        
        return cell
    }
    //MARK: Shuffle
    
    @IBAction func onclick_shuffle(_ sender : UIButton)
    {
        CardDeck.shuffleDeck()
        self.tableview.reloadData()
    }

}

