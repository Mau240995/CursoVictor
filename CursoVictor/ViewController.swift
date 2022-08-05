//
//  ViewController.swift
//  CursoVictor
//
//  Created by user217123 on 8/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtDato: UITextField!
    @IBOutlet var btnOptionDos: UIView!
    var opcional: String? = "hola"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        //btnOptionDos.backgroundColor = .yellow
    }
    @IBAction func actionMoverPantallaDos(_ sender: UIButton) {
        switch sender.tag{
        case 1:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vista = storyboard.instantiateViewController(identifier: "pantallaDos") as! PantallaDosViewController
            vista.strDato = txtDato.text!
            
           self.present(vista, animated: true)
        case 2:
            performSegue(withIdentifier: "SeguePorcodigo", sender: nil)
       case 4:
         performSegue(withIdentifier: "principalTabla", sender: nil)
        default:
            print("No selecciono ninguna opcion correcta")
            if let valor = opcional {
                print(valor)
            }else{
                print("No Hay valor")
            }
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       /* if segue.identifier == "PrincipalPantallaUno"{
            let vista1 = segue.destination as! PantallaUnoViewController
            vista1.strDato1 = txtDato.text!
        }else if segue.identifier == "seguePorCodigo"{
            
        }*/
        if let vista1 = segue.destination as? PantallaUnoViewController{
            vista1.strDato1 = txtDato.text! ?? "No se paso Dato"
        }
    }
       
    
}

