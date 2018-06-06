//
//  MenuVC.swift
//  EduTest
//
//  Created by Noe Osorio on 06/06/18.
//  Copyright © 2018 Noe Osorio. All rights reserved.
//

import UIKit

class MenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    //Arreglo de iconos
    var iconos:[[String:String]] =
        [["materia":"Español","icono":"open-bookbw.png",],
         ["materia":"Matematicas","icono":"abacusbw.png"],
         ["materia":"Ciencias","icono":"blackboardbw.png"],
        ["materia":"Geografia", "icono":"earth-globebw.png"]]
    var colores = [UIColor(red:0.98, green:0.97, blue:0.97, alpha:1.0),
                   UIColor(red:0.38, green:0.94, blue:0.72, alpha:1.0),
                   UIColor(red:0.81, green:0.99, blue:0.53, alpha:1.0),
                   UIColor(red:0.56, green:0.68, blue:1.00, alpha:1.0)]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iconos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menucell", for: indexPath) as! MenuCell
        
        if let img = iconos[indexPath.row]["icono"]{
            cell.icon.image = UIImage(named: img)
        }
        cell.title.text = iconos[indexPath.row]["materia"]
        cell.backgroundColor = colores[indexPath.row % 4]
        
        return cell
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.rowHeight = UITableViewAutomaticDimension
        
    }


}
