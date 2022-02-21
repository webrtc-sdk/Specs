# Changelog

--------------------------------------------
[97.4692.01] - 2022.02.21

* Upgrade to WebRTC-SDK M97.4692.01

Corresponds to https://github.com/webrtc-sdk/webrtc/commit/a4b072276937e49e62a473321103b0497ab21bca

--------------------------------------------
[93.4577.02] - 2022.01.10

* feat: Support bypass voice processing for iOS.

[93.4577.01] - 2021.12.29

* Upgrade to WebRTC-SDK M93.4577.01

[92.4515.11] - 2021.11.04

iOS(arm64,armv7), iOS-Simulator(x64), macOS(arm64,x64).

* Add armv7 for iOS device.

[92.4515.10] - 2021.10.18

iOS(arm64), iOS-Simulator(arm64,x64), macOS(arm64,x64).

* Fix symbol link issue for macOS.

[92.4515.09] - 2021.10.18

iOS(arm64), iOS-Simulator(arm64,x64), macOS(arm64,x64).

* Support arm64-simulator architecture.

--------------------------------------------
[92.4515.08] - 2021.10.18

iOS(arm64,x64) macOS(arm64,x64).

* Add headers for simulcast to macOS.

--------------------------------------------
[92.4515.07] - 2021.09.30

iOS(arm64,x64) macOS(x64, arm64).

* Always restart AudioUnit when category changes.
* Read defaults from AVAudioSession.

--------------------------------------------
[92.4515.06] - 2021.09.27

iOS(arm64,x64) macOS(x64, arm64).

Fix swift package hash.

--------------------------------------------
[92.4515.05] - 2021.09.23

iOS(arm64,x64) macOS(x64, arm64).

Audio session now defaults to `AVAudioSessionCategorySoloAmbient` (iOS default),
using mic will require category to be set to `AVAudioSessionCategoryPlayAndRecord`
or `AVAudioSessionCategoryRecord`.

--------------------------------------------
[92.4515.04] - 2021.09.22

iOS(arm64,x64) macOS(x64, arm64).

* Applied H264 related patch 

--------------------------------------------
[92.4515.03] - 2021.09.22

iOS(arm64,x64) macOS(x64, arm64).

* Simulcast support
* Fixes mic issues

--------------------------------------------
[92.4515.01] - 2021.09.09

* Pre-compiled M92 92.4515.01 for iOS(arm,arm64,x64) macOS(x64, arm64).
