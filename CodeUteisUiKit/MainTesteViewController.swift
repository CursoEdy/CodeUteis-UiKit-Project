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
    @IBOutlet weak var usarSobrenome: UISwitch!
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personView = segue.destination as! PersonViewController
        personView.personName = textName.text
        personView.userLastName = usarSobrenome.isOn
        
        //encerramento do modo de edicao, oculta o teclado e tira o foco das txtField
        view.endEditing(true)
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
//        
//        labelName.text = textName.text
//        indicatorLoading.isHidden = false
//        indicatorLoading.startAnimating()
//        textLoading.isHidden = false
//        
    }
    
    //Unwid View
    @IBAction func segueNavigation(segue: UIStoryboardSegue) {
        
    }
}
