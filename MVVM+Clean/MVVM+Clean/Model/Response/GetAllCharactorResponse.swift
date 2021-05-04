//
//  GetAllCharactorResponse.swift
//  MVVM+Clean
//
//  Created by Apinun on 4/5/2564 BE.
//

import Foundation
import ObjectMapper

class GetAllCharactorResponse: Mappable {
    var code: Int?
    var status: String?
    var attributionText: String?
    var attributionHTML: String?
    var data: CharactorData?
    var copyright: String?
    var etag: String?

    required init?(map: Map) {}

    func mapping(map: Map) {
        code <- map["code"]
        status <- map["status"]
        attributionText <- map["attributionText"]
        attributionHTML <- map["attributionHTML"]
        data <- map["data"]
        copyright <- map["copyright"]
        etag <- map["etag"]
    }
}


class CharactorData: Mappable {

    var limit: Int?
    var total: Int?
    var results: [CharactorResults]?
    var count: Int?
    var offset: Int?

    required init?(map: Map) {}

    func mapping(map: Map) {
        limit <- map["limit"]
        total <- map["total"]
        results <- map["results"]
        count <- map["count"]
        offset <- map["offset"]
    }
}

class CharactorResults: Mappable {
    var name: String?
    var resourceURI: String?
    var description: String?
    var id: Int?
    var thumbnail: Thumbnail?

    required init?(map: Map) {}

    func mapping(map: Map) {
        resourceURI <- map["resourceURI"]
        description <- map["description"]
        id <- map["id"]
        thumbnail <- map["thumbnail"]
        name <- map["name"]
    }
}

class Thumbnail: Mappable {

    var ext: String?
    var path: String?

    required init?(map: Map) {}

    func mapping(map: Map) {
        ext <- map["extension"]
        path <- map["path"]
    }
}
