//
//  ViewController.swift
//  TableView
//
//  Created by Axel Cervantes on 25/08/18.
//  Copyright © 2018 Axel Cervantes. All rights reserved.
//

import UIKit
//UITableDelegate está escrito en Objetive-C y por eso no pide implementación.
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var nombres = ["Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel",
                   "Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel",
                   "Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel",
                   "Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Métodos del protocolo que se deben de implementar
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "celda"
        //Recicla
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = nombres[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let cell = tableView.cellForRow(at: indexPath)
        cell?.accessoryType = .checkmark
        let alertController = UIAlertController(title: "Alumnos", message: "Hola cómo estás", preferredStyle: .alert)
        let okAction =  UIAlertAction(title: "ok", style: .default, handler: nil)
        alertController.addAction(okAction)
        // Sirve para presentar cualquier vista.
        present(alertController, animated: true, completion: nil)
    }


}






















