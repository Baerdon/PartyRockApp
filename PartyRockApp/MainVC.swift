//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Jaroslav Bažant on 21.08.17.
//  Copyright © 2017 DewDrops. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let p1 = PartyRock(imageURL: "https://pbs.twimg.com/profile_images/862732127233875968/d5fIHguu.jpg",
                           videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/k2qgadSvNyU\" frameborder=\"0\" allowfullscreen></iframe>",
                           title: "New Rules")
        let p2 = PartyRock(imageURL: "https://pbs.twimg.com/profile_images/862732127233875968/d5fIHguu.jpg",
                           videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mgI_pH8TOVY\" frameborder=\"0\" allowfullscreen></iframe>",
                           title: "Be The One")
        let p3 = PartyRock(imageURL: "https://pbs.twimg.com/profile_images/863149687984893952/jxcAoc2y.jpg",
                           videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fKopy74weus\" frameborder=\"0\" allowfullscreen></iframe>",
                           title: "Thunder")
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        } else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }


}

