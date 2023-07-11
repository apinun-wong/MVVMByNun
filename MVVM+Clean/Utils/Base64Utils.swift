//
//  Base64Utils.swift
//  MVVM+Clean
//
//  Created by Apinun on 11/7/2566 BE.
//

import Foundation

public struct Base64Decoder {
    enum DecodingError: Swift.Error {
        case invalidData
    }

    func decode(_ base64EncodedString: String) throws -> String {
        guard let data = Data(base64Encoded: base64EncodedString),
            let result = String(data: data, encoding: .utf8)
        else {
            throw DecodingError.invalidData
        }
        return result
    }
}


public struct Base64Encoder {
    func encode(_ text: String) throws -> String? {
        guard let data = text.data(using: .utf8) else { return nil }
        let base64Text = data.base64EncodedString()
        return base64Text
    }
}
