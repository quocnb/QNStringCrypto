//
//  ViewController.swift
//  QNStringCrypto
//
//  Created by quocnb on 09/28/2018.
//  Copyright (c) 2018 quocnb. All rights reserved.
//

import UIKit
import QNStringCrypto

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let convertString = "This string will be converted to "
        let md5Origin = convertString + "MD5"
        print("MD5 Origin: " + md5Origin)
        print("Encrypted: " + md5Origin.md5)

        let sha1Origin = convertString + "SHA1"
        print("SHA1 Origin: " + sha1Origin)
        print("Encrypted: " + sha1Origin.sha1)

        let sha256Origin = convertString + "SHA256"
        print("SHA256 Origin: " + sha256Origin)
        print("Encrypted: " + sha256Origin.sha256)

        let base64Origin = convertString + "BASE 64"
        print("BASE64 Origin: " + base64Origin)
        print("Encrypted: " + base64Origin.base64)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

