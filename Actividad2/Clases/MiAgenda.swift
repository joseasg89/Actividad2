//
//  MiAgenda.swift
//  Actividad2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 usuario. All rights reserved.
//

import UIKit
var fun = Funciones()
class MiAgenda: NSObject {
    let agenda = Agenda(
        Agpersona: Persona( Nombre: "Jose Alberto Suarez Garces",
                            FechaNac: "10/04/1989",
                            CumpleCerca: fun.GetRangoFecha(Fecha: "10/04/1989"),
                            Edad: fun.GetEdad(Fecha:"10/04/1989"),
                            Domicilio: "Ignacio Allende #4 Xochitepetl",
                            Email: "jose@gmail.com"
        ),
        AgContactos: [Contacto(   Nombre: "Francisco Nolasco Reyes",
                                  FechaNac: "10/01/1989",
                                  CumpleCerca: fun.GetRangoFecha(Fecha: "10/01/1989"),
                                  Edad: fun.GetEdad(Fecha:"10/01/1989"),
                                  Domicilio: "Colonia las vegas xochimilco",
                                  Email: "maquina@gmail.com",
                                  Empresa: "Grupo Salinas",
                                  Parentesco: "Amigo"),
                      Contacto(   Nombre: "Noel Fuentes Carmona",
                                  FechaNac: "09/06/1992",
                                  CumpleCerca: fun.GetRangoFecha(Fecha: "09/06/1992"),
                                  Edad: fun.GetEdad(Fecha:"09/06/1992"),
                                  Domicilio: "Colonia las vegas xochimilco",
                                  Email: "NoelF@gmail.com",
                                  Empresa: "Netec",
                                  Parentesco: "Compañero"),
                      Contacto(   Nombre: "Cesar Ivan Morales Rojas",
                                  FechaNac: "12/01/1990",
                                  CumpleCerca: fun.GetRangoFecha(Fecha: "12/01/1990"),
                                  Edad: fun.GetEdad(Fecha:"12/01/1990"),
                                  Domicilio: "Av hidalgo 234 insurgentes sur",
                                  Email: "IvanGin@gmail.com",
                                  Empresa: "Grupo Salinas",
                                  Parentesco: "Familiar"),
                      Contacto(   Nombre: "Fanny Jazmin Salazar Rojas",
                                  FechaNac: "09/06/1985",
                                  CumpleCerca: fun.GetRangoFecha(Fecha: "09/06/1985"),
                                  Edad: fun.GetEdad(Fecha:"09/06/1985"),
                                  Domicilio: "Ampliacion Durango #980 col doctores",
                                  Email: "fannyJaz@gmail.com",
                                  Empresa: "Grupo Salinas",
                                  Parentesco: "Compañero"),
                      Contacto(   Nombre: "Isabel Morales Fuentes",
                                  FechaNac: "09/06/1980",
                                  CumpleCerca: fun.GetRangoFecha(Fecha: "09/06/1980"),
                                  Edad: fun.GetEdad(Fecha:"09/06/1980"),
                                  Domicilio: "pueblo escondido entre las hojas #1589",
                                  Email: "IsaMoFu@gmail.com",
                                  Empresa: "Grupo Salinas",
                                  Parentesco: "Amigo"),
                      ])
}

