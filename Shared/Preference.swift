import Foundation

struct Preference: Sendable {
    static let appGroup = "group.com.yiyeshi0.iosstream"
    static let shared = Preference()

    var uri = "rtmp://192.168.3.234/live"
    var streamName = "test"

    func makeURL() -> URL? {
        let defaults = UserDefaults(suiteName: Self.appGroup)
        let uri = defaults?.string(forKey: "uri") ?? uri
        let streamName = defaults?.string(forKey: "streamName") ?? streamName
        if uri.contains("rtmp://") {
            return URL(string: uri + "/" + streamName)
        }
        return URL(string: uri)
    }
}
