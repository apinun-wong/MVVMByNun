//
//  GetAllCharactorRequest.swift
//  MVVM+Clean
//
//  Created by Apinun on 4/5/2564 BE.
//

import Foundation
import ObjectMapper

final class GetAllCharactorRequest: Mappable {
    var limit: Int?
    var searchName: String?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        limit <- map["limit"]
        searchName <- map["name"]
    }
}
