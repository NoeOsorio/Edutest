//
//  MenuViewController.swift
//  EduTest
//
//  Created by Noe Osorio on 05/06/18.
//  Copyright © 2018 Noe Osorio. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return iconos.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menu", for: indexPath) as! MenuCollectionViewCell
        
        if let archivoIcono = iconos[indexPath.row]["icono"]{
            cell.image.image = UIImage(named: archivoIcono)
        }
        
        cell.title.text = iconos[indexPath.row]["materia"]
        
        return cell
    }
    
    /*func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }*/
    
    //Arreglo de iconos
    var iconos:[[String:String]] = [["materia":"español","icono":"open-book.png"], ["materia":"matematicas","icono":"blackboard.png"], ["materia":"ciencias","icono":"physics.png"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
