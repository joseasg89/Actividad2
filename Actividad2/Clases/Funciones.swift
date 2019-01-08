//
//  Funciones.swift
//  Actividad2
//
//  Created by usuario on 1/8/19.
//  Copyright © 2019 usuario. All rights reserved.
//

import UIKit

class Funciones{
    func GetEdad(Fecha:String) -> String{
        let datestringformatter = DateFormatter()
        datestringformatter.dateFormat = "dd/MM/yyyy"
        let datefromstring = datestringformatter.date(from: Fecha)
        
        var edad = Calendar.current.dateComponents([.year], from: datefromstring!, to:Date())
        let edad1 = String(edad.year!)
        return edad1
    }
    func GetRangoFecha(Fecha:String) -> Bool{
        let datestringformatter = DateFormatter()
        datestringformatter.dateFormat = "dd/MM/yyyy"
        let datefromstring = datestringformatter.date(from: Fecha)
        var edad = Calendar.current.dateComponents([.year, .month, .day], from: datefromstring!, to:Date())
        
        var dateComponent = DateComponents()
        dateComponent.year = edad.year
        dateComponent.month = edad.month
        dateComponent.day = edad.day
        let newDate = Calendar.current.date(byAdding: dateComponent, to: datefromstring!)
        var intervalo  = Calendar.current.dateComponents([.year, .month, .day], from: Date(), to: newDate!)
        
        if intervalo.month == 0 && (intervalo.day! <= 4 && intervalo.day! >= 0){
            return true
        }else{
            return false
        }
    }
}
