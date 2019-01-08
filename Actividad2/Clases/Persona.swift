//
//  Persona.swift
//  Actividad2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 usuario. All rights reserved.
//

import UIKit

class Persona {
    var Nombre: String
    var FechaNac: String
    var CumpleCerca: Bool
    var Edad: String
    var Domicilio: String
    var Email: String
    init(Nombre: String, FechaNac: String, CumpleCerca: Bool, Edad: String, Domicilio: String, Email: String){
        self.Nombre = Nombre
        self.FechaNac = FechaNac
        self.CumpleCerca = CumpleCerca
        self.Edad = Edad
        self.Domicilio = Domicilio
        self.Email = Email
    }
}
