import XCTest
import Nimble
import Quick

final class TestSpec: AsyncSpec {
    override class func spec() {
        describe("test") {
            
            beforeEach {
                
            }
            
            describe("initial state") {
                it("should be stopped") {
                    expect(true).to(equal(true))
                }
            }
            
        }
    }
}
