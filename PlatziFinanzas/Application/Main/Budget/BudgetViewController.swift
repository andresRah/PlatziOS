//
//  BudgetViewController.swift
//  PlatziFinanzas
//
//  Created by Andres Leonardo Arevalo on 1/6/19.
//  Copyright © 2019 Andres Leonardo Arevalo. All rights reserved.
//

import UIKit

class BudgetViewController: UIViewController {

    @IBOutlet weak var tableView : UITableView!
    @IBOutlet var animationsButtons: [UIButton]!
    
    @IBOutlet weak var animationLayout: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        let cell = UINib(nibName: "TransactionsCell", bundle: Bundle.main)
        tableView.register(cell, forCellReuseIdentifier: "cell")
    }
    
    @IBAction func animateHeader(sender: UIButton)
    {
        animationLayout.constant = sender.frame.origin.x
        UIView.animate(withDuration: 0.5, animations: {
            self.view.layoutIfNeeded()
        }) { (completed) in
            self.animationsButtons.forEach {
                $0.setTitleColor( UIColor(named: "TextColor") , for: .normal)
                sender.setTitleColor( UIColor.white , for: .normal)
            }
        }
    }
}

extension BudgetViewController: UITableViewDelegate {
    
}

extension BudgetViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = 10
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    }
}
