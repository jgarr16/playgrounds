import Foundation
import XCTest

class UserManagerTests: XCTestCase {
    var manager: UserManager!
    
    override func setUp() {
        super.setUp()
        manager = UserManager()
    }
    
    func testLoggingIn() {
        XCTAssertNil(manager.user)
        
        let user = User(id: 7, name: "John")
        manager.login(user: user)
        XCTAssertEqual(manager.user, user)
    }
}
