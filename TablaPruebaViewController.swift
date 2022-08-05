//
//  TablaPruebaViewController.swift
//  CursoVictor
//
//  Created by user217123 on 8/2/22.
//

import UIKit

class TablaPruebaViewController: ViewController ,UITableViewDelegate,UITableViewDataSource{
   
    

    @IBOutlet weak var tablaPrueba: UITableView!
    
    var dias : [String] = ["Lunes","Mertes","Miercoles","Jueves","Viernes","Sabado","Domingo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tablaPrueba.delegate = self
        tablaPrueba.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func regresar(_ sender: Any) {
    }
    @IBAction func AgregarDia(_ sender: Any) {
        let alerta = UIAlertController(title: "Agregar un dia", message: "Escribe el dia que Desea Agregar", preferredStyle: .alert)
        
        let btnCancelar = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alerta.addTextField()
        
        let btnAgregar = UIAlertAction(title: "Agregar", style: .default){
            [unowned   self ] _ in
            let dato = alerta.textFields?.first?.text
            if let nuevoDia = dato {
                self.dias.append(nuevoDia)
            }
            else{
                    self.dias.append("No se inserto")
                }
                self.tablaPrueba.reloadData()
            }
            alerta.addAction(btnAgregar)
            alerta.addAction(btnCancelar)
            self.present(alerta, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell()
        cell.textLabel?.text = dias[indexPath.row]
        return cell
            
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
