import XCTest
import Shouter
@testable import CoreNetworking

final class CoreNetworkingTests: XCTestCase {
  func testExample() throws {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct
    // results.
    //XCTAssertEqual(CoreNetworking().text, "Hello, World!")
  }
  
  var sut: URLComponentsBuilder!
  
  func testURLComponentBuilderInit() {
    // Given
    let expected = URL(string: "https://staging.algostudio.net/api/v1/login")
    
    // When
    sut = URLComponentsBuilder(
      scheme: "https",
      host: "staging.algostudio.net",
      path: "/api/v1"
    ).addPath("login")
    
    let result = sut.build()
    
    Shouter.debug("sut", value: result)
    
    // Then
    XCTAssertEqual(result.url, expected)
  }
}
