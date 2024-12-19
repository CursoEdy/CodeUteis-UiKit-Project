//
//  PersonViewController.swift
//  CodeUteisUiKit
//
//  Created by ednardo alves on 19/12/24.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet weak var person: UILabel!
    
    var personName: String!
    var userLastName: Bool!
    
    var personGenerator: PersonGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personGenerator = PersonGenerator(name: personName, userLastName: userLastName)
        
        let exibirNome = personGenerator.printName()
        
        person.text = exibirNome

        // Do any additional setup after loading the view.
    }
}
