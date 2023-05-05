//
//  Tools.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 02/05/23.
//

import Foundation


enum CryptoError : LocalizedError{
    case urlNotFoundError
}

extension CryptoError {
    public var errorDescription: String? {
        switch self {
        case .urlNotFoundError:
            return NSLocalizedString("Bad URL", comment: "Url Not Found")
        }
    }
}
