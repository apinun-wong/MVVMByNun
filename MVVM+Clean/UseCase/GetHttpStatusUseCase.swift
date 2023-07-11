//
//  GetHttpStatusUseCase.swift
//  MVVM+Clean
//
//  Created by Apinun on 10/7/2566 BE.
//

import Foundation

protocol GetHttpStatusUseCase {
    func getData() -> HttpStatusResponse?
}

final class GetHttpStatusUseCaseImpl: GetHttpStatusUseCase {
    func getData() -> HttpStatusResponse? {
        guard let jsonFilePath = Bundle.main.path(forResource: "aHR0cHN0YXR1cw==", ofType: "json") else { return nil }
        var encodedText: String = ""
        let base64Decoder = Base64Decoder()
        let jsonDecoder = JSONDecoder()
        do {
            encodedText = try String(contentsOfFile: jsonFilePath, encoding: .utf8)
            let newEncodedText = encodedText.replacingOccurrences(of: "\n", with: "")
            let jsonString = try base64Decoder.decode(newEncodedText)
            guard let data = jsonString.data(using: .utf8) else { return nil }
            return try? jsonDecoder.decode(HttpStatusResponse.self, from: data)
        } catch {
            print("Something went wrong when decode api (\(error.localizedDescription)")
            return nil
        }
    }
}
