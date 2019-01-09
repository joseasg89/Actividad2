//
//  Agenda.swift
//  Actividad2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 usuario. All rights reserved.
//

import UIKit

class Agenda{
    var Agpersona: Persona
    var AgContactos: [Contacto] = []
    init(Agpersona: Persona, AgContactos: [Contacto]) {
        self.Agpersona = Agpersona
        self.AgContactos = AgContactos
    }
}
