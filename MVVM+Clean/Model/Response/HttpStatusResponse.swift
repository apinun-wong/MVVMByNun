//
//  HttpStatusResponse.swift
//  MVVM+Clean
//
//  Created by Apinun on 10/7/2566 BE.
//

import Foundation

public struct HttpStatusResponse: Codable {
    let status: Int
    let description: String
    let data: [GroupStatusResponse]
    
    public struct GroupStatusResponse: Codable {
        let id: Int
        let title: String
        let shortDescription: String
        let data: [CodeStatusResponse]
        
        public struct CodeStatusResponse: Codable {
            let httpId: Int
            let shortDescription: String
            let detail: String
        }
    }
}




