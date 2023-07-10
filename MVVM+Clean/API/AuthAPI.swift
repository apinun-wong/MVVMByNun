//
//  AuthAPI.swift
//  MVVM+Clean
//
//  Created by Apinun on 15/4/2564 BE.
//

import Foundation

//let authProvider = MoyaProvider<AuthAPI>()
//
//public enum AuthAPI {
//    case login(username: String, password: String)
//}
//
//extension AuthAPI: TargetType {
//    public var baseURL: URL {
//        return URL(string: BaseURL.domain)!
//    }
//
//    public var path: String {
//        switch self {
//        case .login(_, _):
//            return "/login"
//        }
//    }
//
//    public var method: Moya.Method {
//        switch self {
//        case .login(_, _):
//            return .post
//        }
//    }
//
//    public var sampleData: Data {
//        return Data()
//    }
//
//    public var task: Task {
//        switch self {
//        case .login(let username, let password):
//            let params = ["username": username,
//                          "password": password]
//            return .requestParameters(parameters: params, encoding: URLEncoding.default)
//        }
//    }
//
//    public var headers: [String : String]? {
//        return [:]
//    }
//
//
//}
