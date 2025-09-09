Pod::Spec.new do |spec|
  spec.name = "WebRTC-SDK"
  spec.version = "137.7151.03"
  spec.summary = "WebRTC pre-compiled library for Darwin. "
  spec.description = <<-DESC
  WebRTC pre-compiled library for Darwin.
  The binary files in this repository are compiled using Google WebRTC source code M version, 
  and a series of optimization patches from the webrtc-sdk community have been added.
  DESC

  spec.homepage = "https://github.com/webrtc-sdk/Specs"
  spec.license = { :type => "BSD", :file => "WebRTC.xcframework/LICENSE" }
  spec.author = "webrtc-sdk"

  spec.ios.deployment_target = "13.0"
  spec.osx.deployment_target = "10.15"
  spec.tvos.deployment_target = "17.0"
  spec.visionos.deployment_target = "1.0"

  spec.source = { :http => "https://github.com/webrtc-sdk/Specs/releases/download/137.7151.03/WebRTC.xcframework.zip" }
  spec.vendored_frameworks = "WebRTC.xcframework"

  # Exclude architectures for specific platforms
  spec.pod_target_xcconfig = {
    "EXCLUDED_ARCHS[sdk=appletvsimulator*]" => "x86_64",
    "EXCLUDED_ARCHS[sdk=xrsimulator*]" => "x86_64",
  }
end
