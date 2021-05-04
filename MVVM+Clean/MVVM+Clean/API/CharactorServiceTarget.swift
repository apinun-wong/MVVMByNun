//
//  CharactorServiceTarget.swift
//  MVVM+Clean
//
//  Created by Apinun on 4/5/2564 BE.
//

import Foundation
import Moya

enum CharactorServiceTarget {
    case getAllCharactor(request: GetAllCharactorRequest)
    case getDetailCharactor(request: GetDetailCharactorRequest)
}


extension CharactorServiceTarget: TargetType {
    public var baseURL: URL {
        return URL(string: BaseURL.domain + self.path)!
    }
    
    public var path: String {
        switch self {
        case .getAllCharactor(_):
            return "/v1/public/characters"
        case .getDetailCharactor(let id):
            return "/v1/public/characters/\(id)"
        }
    }
    
    public var method: Moya.Method {
        return .get
    }
    
    public var sampleData: Data {
        return Data()
    }
    
    public var task: Task {
        switch self {
        case .getAllCharactor(let request):
            var params = request.toJSON()
            params["t"] = App.timestamp
            params["apikey"] = App.publicKey
            params["hash"] = App.hash
            return .requestParameters(parameters: params, encoding: URLEncoding.queryString)
        case .getDetailCharactor(let request):
            var params = request.toJSON()
            params["t"] = App.timestamp
            params["apikey"] = App.publicKey
            params["hash"] = App.hash
            return .requestParameters(parameters: params, encoding: URLEncoding.queryString)
        }
    }
    
    public var headers: [String : String]? {
        return [:]
    }
    
    
}
