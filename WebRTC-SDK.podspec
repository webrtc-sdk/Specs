Pod::Spec.new do |spec|

    spec.name         = "WebRTC-SDK"
    spec.version      = "92.4515.01"
    spec.summary      = "WebRTC pre-compiled library for Darwin. "
    spec.description  = <<-DESC
    WebRTC pre-compiled library for Darwin.
    All binaries in this repository are compiled from the official WebRTC source code without any modifications to the sources code or to the output binaries.
    DESC
  
    spec.homepage     = "https://github.com/webrtc-sdk/Specs"
    spec.license      = { :type => 'BSD', :file => 'WebRTC.xcframework/LICENSE' }
    spec.author       = "webrtc-sdk"
    spec.ios.deployment_target = '10.0'
    spec.osx.deployment_target = '10.11'
  
    spec.source       = { :http => "https://github.com/webrtc-sdk/Specs/releases/download/92.4515.01/WebRTC.xcframework.zip" }
    spec.vendored_frameworks = "WebRTC.xcframework"
    
  end