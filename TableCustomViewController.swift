//
//  TableCustomViewController.swift
//  CursoVictor
//
//  Created by user217123 on 8/3/22.
//

import UIKit

class TableCustomViewController: UITableViewController {
    
    
    @IBOutlet weak var srcBusqueda: UISearchBar!
    @IBOutlet var tablaCustom: UITableView!
    
    var Agencia :[Auto] = []
    var busqueda : [Auto] = []
    var dct : [String:String] = ["marca":"Ferrari",
                                 "color":"Rojo",
                                 "imagen":"https://th.bing.com/th/id/OIP.VFEW9bStdWHCxsY5caTd8AHaFj?pid=ImgDet&rs=1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tablaCustom.delegate = self
        tablaCustom.dataSource = self
       // srcBusqueda.delegate = self
        let auto = Auto(diccionario: dct)
        let auto2 = Auto(diccionario: ["marca":"Lamboghine","color":"negto","imagen":"https://st.motortrendenespanol.com/uploads/sites/45/2015/03/2014-Lamborghini-Huracan-promo.jpg"])
        let auto3 = Auto(diccionario: ["marca":"Vmv","color":"verde","imagen":"https://st.motortrendenespanol.com/uploads/sites/45/2015/03/2014-Lamborghini-Huracan-promo.jpg"])
        Agencia.append(auto)
        Agencia.append(auto2)
        Agencia.append(auto3)

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return Agencia.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return 0
    }
   
    
}


