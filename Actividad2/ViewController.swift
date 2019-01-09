//
//  ViewController.swift
//  Actividad2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 usuario. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnFelicitar: UIButton!
    @IBOutlet weak var txvInfo: UITextView!
    @IBOutlet weak var tblContactos: UITableView!
    @IBAction func btnFelicitarClick(_ sender: Any) {
        let img = UIImage(named: "birtday.jpg")
        let txt = "Felicidades"
        let items = [img, txt] as [Any]
        let svc = UIActivityViewController(activityItems: items, applicationActivities: nil)
        svc.excludedActivityTypes = [UIActivity.ActivityType.airDrop]
        present(svc, animated: true, completion: nil)
    }
    var miagenda = MiAgenda()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblContactos.dataSource = self
        self.tblContactos.delegate = self
    }
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return miagenda.agenda.AgContactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        celda.textLabel?.text = miagenda.agenda.AgContactos[indexPath.row].Nombre
        celda.detailTextLabel?.text = miagenda.agenda.AgContactos[indexPath.row].Parentesco
        return celda
    }
}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        txvInfo.text = "Fecha de Nacimiento: \(miagenda.agenda.AgContactos[indexPath.row].FechaNac)\nEdad: \(miagenda.agenda.AgContactos[indexPath.row].Edad)\nDomicilio: \(miagenda.agenda.AgContactos[indexPath.row].Domicilio)\n"
        
        if miagenda.agenda.AgContactos[indexPath.row].CumpleCerca == true{
            btnFelicitar.isHidden = false
        }else{
            btnFelicitar.isHidden = true
        }
    }
}
