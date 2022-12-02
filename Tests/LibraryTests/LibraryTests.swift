import XCTest
@testable import Library

final class LibraryTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let result: Library = .fixtures()
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let data = try! encoder.encode(result)
        let string = String(data: data, encoding: .utf8)
        print(string)
        XCTAssertEqual(result.entries.first?.media.first?.title, "Media Title")
    }
}
