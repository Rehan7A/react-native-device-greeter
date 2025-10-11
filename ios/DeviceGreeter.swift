import Foundation

@objc(MyDeviceGreeter)
public class MyDeviceGreeter: NSObject {

  @objc public static let shared = MyDeviceGreeter()

  // Prevent external instantiation
  private override init() {
    super.init()
  }

  @objc public func multiply(_ a: Double, b: Double) -> Double {
    return a * b
  }

  @objc public func add(_ a: Double, b: Double) -> Double {
    return a + b
  }
}
