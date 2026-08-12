import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("iOS Screen Stream")
                .font(.title)
            Text("已安装屏幕广播扩展。请从控制中心开始屏幕录制，并选择 iOS Screen Stream。")
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

@main
struct iOSScreenStreamApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
