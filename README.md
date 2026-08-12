# iOSScreenStream

Minimal ReplayKit screen streaming app for Windows/VLC.

- App: `iOSScreenStream`
- Broadcast Upload Extension: `BroadcastExtension`
- Pushes H.264/AAC via RTMP using HaishinKit

## Build

GitHub Actions builds an unsigned IPA on macOS 15 with Xcode 26.3.

## RTMP

Default URL is `rtmp://192.168.3.234/live/test`.

On Windows, run a local RTMP server, then open in VLC:

```text
rtmp://127.0.0.1:1935/live/test
```
