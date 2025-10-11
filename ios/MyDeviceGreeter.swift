import Foundation

@objc(MyDeviceGreeter)
public class MyDeviceGreeter: NSObject {

  // Singleton instance
  @objc public static let shared = MyDeviceGreeter()
  
  // Private initializer to enforce singleton
  @objc private override init() {
    super.init()
  }
  
  @objc public func hello() {
    print("Hello from Swift")
  }
}
