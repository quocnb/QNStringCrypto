import XCTest
import QNStringCrypto

class Tests: XCTestCase {
    let testStrings = [
        "The quick brown fox jumps over the lazy dog",
        "",
        "https://sv1.uphinhnhanh.com/images/2018/04/25/No56.png"
    ]
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSha1() {
        let expectedValue = [
            "2fd4e1c67a2d28fced849ee1bb76e7391b93eb12",
            "da39a3ee5e6b4b0d3255bfef95601890afd80709",
            "36c44e5b46ef7c6e6477275f1fbeea136ed29705"
        ]
        let actualValue = testStrings.map({$0.sha1})
        XCTAssert(expectedValue == actualValue, "SHA1 test fail")
    }

    func testMd5() {
        let expectedValue = [
            "9e107d9d372bb6826bd81d3542a419d6",
            "d41d8cd98f00b204e9800998ecf8427e",
            "2ed7db75a573ad69d44fa4140f21a7f7"
        ]
        let actualValue = testStrings.map({$0.md5})
        XCTAssert(expectedValue == actualValue, "Md5 test fail")
    }

    func testBase64() {
        let expectedValue = [
            "VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wcyBvdmVyIHRoZSBsYXp5IGRvZw==",
            "",
            "aHR0cHM6Ly9zdjEudXBoaW5obmhhbmguY29tL2ltYWdlcy8yMDE4LzA0LzI1L05vNTYucG5n"
        ]
        let actualValue = testStrings.map({$0.base64})
        XCTAssert(expectedValue == actualValue, "base64 test fail")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
