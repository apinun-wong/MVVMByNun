//
//  GetDetailCharactorRequest.swift
//  MVVM+Clean
//
//  Created by Apinun on 4/5/2564 BE.
//

import Foundation
import ObjectMapper

final class GetDetailCharactorRequest: Mappable {
    var characterId: Int?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        characterId <- map["characterId"]
    }
}
