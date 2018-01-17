//
//  NSSaudacao.swift
//  SaudacaoCustomPod
//
//  Created by Swift on 16/01/2018.
//  Copyright © 2018 Renato. All rights reserved.
//

import UIKit

enum Periodo {
    case manha, tarde, noite
    
    var toString: String {
        switch self {
        case .manha: return "Bom Dia"
        case .tarde: return "Boa Tarde"
        case .noite: return "Boa Noite"
        }
    }
}

class NSSaudacao: NSObject {

    class func definirPeriodo() -> Periodo {
        let agora = Date()
        let meioDia = Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: agora)!
        let seisHoras = Calendar.current.date(bySettingHour: 18, minute: 0, second: 0, of: agora)!
        if agora >= meioDia && agora < seisHoras {
            return Periodo.tarde
        } else if agora >= seisHoras {
            return Periodo.noite
        }
        return Periodo.manha
    }
}
