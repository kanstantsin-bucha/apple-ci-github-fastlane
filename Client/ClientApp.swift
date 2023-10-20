import Sentry
import SwiftUI

@main
struct ClientApp: App {
    var body: some Scene {
        let _ = SentrySDK.isEnabled
        WindowGroup {
            ContentView()
        }
    }
}
