//
//  SecondyViewController.swift
//  CodeUteisUiKit
//
//  Created by ednardo alves on 13/12/24.
//

import UIKit

class SecondyViewController: UIViewController {

    @IBOutlet weak var titleText: UILabel!
    
    var games: TestClass!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func Enviar(_ sender: UIButton) {
        
        performSegue(withIdentifier: "segueTela3", sender: nil)
        
//        if games == nil {
//            games = TestClass(name: titleText.text?.uppercased() ?? "", idade: 1)
//        }
//        
//        
//        
//        do {
//            try titleText.text = games.name
//        } catch {
//            print(error.localizedDescription)
//        }
//        
//        //retorna para a view anterior
//        navigationController?.popViewController(animated: true)
    }
    

}
