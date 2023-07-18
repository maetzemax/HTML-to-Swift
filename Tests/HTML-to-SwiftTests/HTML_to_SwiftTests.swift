import XCTest
@testable import HTML_to_Swift

final class HTML_to_SwiftTests: XCTestCase {
    @available(macOS 13.0, *)
    func testHTMLConverter() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let html =
        """
        <h1>This is a Heading</h1>
        <h3>This is also a Heading</h3>
        <p>This is a paragraph.</p>
        """
        
        let tags = HTMLConverter().getTags(html: html)
        
        XCTAssertEqual(tags.count == 3, true)
    }
}
