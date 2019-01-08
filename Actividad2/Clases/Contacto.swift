//
//  Contacto.swift
//  Actividad2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 usuario. All rights reserved.
//

import UIKit

class Contacto : Persona{
    var Empresa: String
    var Parentesco: String
    init(Nombre: String, FechaNac: String, CumpleCerca: Bool, Edad: String, Domicilio: String, Email: String, Empresa: String,Parentesco: String) {
        self.Empresa = Empresa
        self.Parentesco = Parentesco
        super.init(Nombre: Nombre, FechaNac: FechaNac, CumpleCerca: CumpleCerca, Edad: Edad, Domicilio: Domicilio, Email: Email)
    }
}
