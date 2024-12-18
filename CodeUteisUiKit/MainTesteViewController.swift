//
//  MainTesteViewController.swift
//  CodeUteisUiKit
//
//  Created by ednardo alves on 13/12/24.
//

import UIKit

class MainTesteViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var textName: UITextField!
    
    @IBOutlet weak var indicatorLoading: UIActivityIndicatorView!
    @IBOutlet weak var textLoading: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        indicatorLoading.isHidden = true
        textLoading.isHidden = true
        // Do any additional setup after loading the view.
        
        testLoading()
    }
    
    func testLoading() {
        
    }
    
    @IBAction func NavigationTeste(_ sender: Any) {
        
        // Chamando segue via código.
//        performSegue(withIdentifier: "segueteste01", sender: nil)
    }

    // Funcao para executar um bloco de codigo ao tocar na tela.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "segueteste01", sender: nil)
    }
    
    @IBAction func Enviar(_ sender: UIButton) {
        
        labelName.text = textName.text
        indicatorLoading.isHidden = false
        indicatorLoading.startAnimating()
        textLoading.isHidden = false
        
    }
    
    //Unwid View
    @IBAction func segueNavigation(segue: UIStoryboardSegue) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
