//
//  String+Crypto.swift
//  QNStringCrypto
//
//  Created by Quoc Nguyen on 2018/09/27.
//

import Foundation
import CommonCrypto

public extension String {
    var md5: String {
        guard let messageData = self.data(using:.utf8) else {
            return ""
        }
        var r = Data(count: Int(CC_MD5_DIGEST_LENGTH))

        _ = r.withUnsafeMutableBytes {digestBytes in
            messageData.withUnsafeBytes {messageBytes in
                CC_MD5(messageBytes, CC_LONG(messageData.count), digestBytes)
            }
        }
        let encryption = String(
            format: "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            r[0], r[1], r[2], r[3], r[4], r[5], r[6], r[7], r[8], r[9], r[10], r[11], r[12], r[13], r[14], r[15]
        )
        return encryption
    }

    var sha1: String {
        guard let messageData = self.data(using:.utf8) else {
            return ""
        }
        var r = Data(count: Int(CC_SHA1_DIGEST_LENGTH))
        _ = r.withUnsafeMutableBytes {digestBytes in
            messageData.withUnsafeBytes {messageBytes in
                CC_SHA1(messageBytes, CC_LONG(messageData.count), digestBytes)
            }
        }
        let encryption = String(
            format: "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            r[0], r[1], r[2], r[3], r[4], r[5], r[6], r[7], r[8], r[9], r[10],
            r[11], r[12], r[13], r[14], r[15], r[16], r[17], r[18], r[19]
        )
        return encryption
    }

    var base64: String {
        guard let messageData = self.data(using: .utf8) else {
            return ""
        }
        return messageData.base64EncodedString()
    }
}
