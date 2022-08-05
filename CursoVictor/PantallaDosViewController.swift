//
//  PantallaDosViewController.swift
//  CursoVictor
//
//  Created by user217123 on 8/2/22.
//

import UIKit

class PantallaDosViewController: ViewController {
    
    @IBOutlet weak  var lblDato: UILabel!
    var strDato : String = ""
    
    override func viewDidLoad() {
        lblDato.text = strDato
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
