//
//  IntermediaryModels.swift
//  Restaurante
//
//  Created by Axel Cervantes on 2/1/19.
//  Copyright © 2019 Axel Cervantes. All rights reserved.
//

import Foundation

/*
 Modelos intermedios que nos servirán para conectar
 el servidor con los datos del programa
 */
struct Categories: Codable {
    let categories: [String]
}
struct PreparationTime: Decodable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
