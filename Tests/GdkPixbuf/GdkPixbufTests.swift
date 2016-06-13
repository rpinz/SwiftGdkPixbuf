import XCTest
@testable import GdkPixbuf

class GdkPixbufTests: XCTestCase {

    /// test simple pixel buffer properties
    func testPixbuf() {
        let w: CInt = 320
        let h: CInt = 240
        let b: CInt = 8
        let pixbuf = Pixbuf(colorspace: .rgb, has_alpha: false, bits_per_sample: b, width: w, height: h)
        XCTAssert(pixbuf.colorspace == .rgb)
        XCTAssertFalse(pixbuf.hasAlpha)
        XCTAssertEqual(pixbuf.bitsPerSample, b)
        XCTAssertEqual(pixbuf.width, w)
        XCTAssertEqual(pixbuf.height, h)
        XCTAssertEqual(pixbuf.byteLength, Int(w*h*3))
        XCTAssertEqual(pixbuf.rowstride, w*3)
    }

}
extension GdkPixbufTests {
    static var allTests : [(String, (GdkPixbufTests) -> () throws -> Void)] {
        return [
            ("testPixbuf", testPixbuf),
        ]
    }
}
