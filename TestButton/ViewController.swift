//
//  ViewController.swift
//  TestButton
//
//  Created by karpo_dub on 11/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var trueButtom: UIButton!
    
    let actionButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(actionButton)
        
        trueButtom.layer.borderColor = UIColor.red.cgColor
        trueButtom.layer.borderWidth = 1
        trueButtom.layer.cornerRadius = 10
        
        actionButton.layer.borderColor = UIColor.red.cgColor
        actionButton.layer.borderWidth = 1
        actionButton.layer.cornerRadius = 10
        
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16), actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -93), actionButton.widthAnchor.constraint(equalToConstant: 140), actionButton.heightAnchor.constraint(equalToConstant: 109)
        ])
        
        actionButton.setTitle("Wyzwanie", for: .normal)
        actionButton.setTitleColor(UIColor.red, for: .normal)
        actionButton.setTitleColor(UIColor.orange, for: .highlighted)
        actionButton.showsTouchWhenHighlighted = true
        actionButton.addTarget(self, action: #selector(letAction), for: .touchUpInside)

    }

    @IBAction func trueAction(_ sender: Any) {
        titleLabel.text = Source.getInfo(type: .word)
    }
    
    @objc func letAction() {
        titleLabel.text = Source.getInfo(type: .action)
    }
}

