//
//  URLConfig.swift
//  MVVM+Clean
//
//  Created by Apinun on 15/4/2564 BE.
//

import Foundation

enum BaseURL {
    static let domain: String = "http://gateway.marvel.com/"
    enum Auth {
        static let loginURL: String = "https://607822b2e7f4f50017183cba.mockapi.io"
    }
}

enum App {
    static let publicKey: String = "2985536cce60ecbaa355f169ab91fe68"
    static let timestamp: String = "1234"
    static let hash: String = "ab30fe63e61689073afcb6f7e0d85e44"
}
