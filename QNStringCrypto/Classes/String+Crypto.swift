//
//  String+Crypto.swift
//  QNStringCrypto
//
//  Created by Quoc Nguyen on 2018/09/27.
//

import Foundation
import CommonCrypto
import CryptoKit

public extension String {
    var md5: String {
        guard let messageData = self.data(using:.utf8) else {
            return ""
        }
        if #available(iOS 13.0, *) {
            return Insecure.MD5.hash(data: messageData).map {
                String(format: "%02x", $0)
            }.joined()
        } else {
            // Fallback on earlier versions
            let data = Data(self.utf8)
            let hash = data.withUnsafeBytes { (bytes: UnsafeRawBufferPointer) -> [UInt8] in
                var hash = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
                CC_MD5(bytes.baseAddress, CC_LONG(data.count), &hash)
                return hash
            }
            return hash.map { String(format: "%02x", $0) }.joined()
        }
    }

    var sha1: String {
        guard let messageData = self.data(using:.utf8) else {
            return ""
        }
        if #available(iOS 13.0, *) {
            return Insecure.SHA1.hash(data: messageData).map {
                String(format: "%02hhx", $0)
            }.joined()
        } else {
            // Fallback on earlier versions
            let data = Data(self.utf8)
            let hash = data.withUnsafeBytes { (bytes: UnsafeRawBufferPointer) -> [UInt8] in
                var hash = [UInt8](repeating: 0, count: Int(CC_SHA1_DIGEST_LENGTH))
                CC_MD5(bytes.baseAddress, CC_LONG(data.count), &hash)
                return hash
            }
            return hash.map { String(format: "%02x", $0) }.joined()
        }
    }

    var sha256: String {
        guard let messageData = self.data(using:.utf8) else {
            return ""
        }
        if #available(iOS 13.0, *) {
            return SHA256.hash(data: messageData).map {
                String(format: "%02x", $0)
            }.joined()
        } else {
            // Fallback on earlier versions
            let data = Data(self.utf8)
            let hash = data.withUnsafeBytes { (bytes: UnsafeRawBufferPointer) -> [UInt8] in
                var hash = [UInt8](repeating: 0, count: Int(CC_SHA256_DIGEST_LENGTH))
                CC_SHA256(bytes.baseAddress, CC_LONG(data.count), &hash)
                return hash
            }
            return hash.map { String(format: "%02x", $0) }.joined()
        }
    }

    var base64: String {
        guard let messageData = self.data(using: .utf8) else {
            return ""
        }
        return messageData.base64EncodedString()
    }
}
