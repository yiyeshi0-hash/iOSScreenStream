import ReplayKit
import SwiftUI

struct BroadcastPicker: UIViewRepresentable {
    func makeUIView(context: Context) -> RPBroadcastPickerView {
        let picker = RPBroadcastPickerView()
        picker.preferredExtensionIdentifier = "com.yiyeshi0.iosstream.broadcast"
        return picker
    }

    func updateUIView(_ uiView: RPBroadcastPickerView, context: Context) {
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("iOS Screen Stream")
                .font(.title)
            Text("点击下方按钮开始或停止广播到 RTMP")
                .foregroundStyle(.secondary)
            BroadcastPicker()
                .frame(width: 180, height: 60)
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
