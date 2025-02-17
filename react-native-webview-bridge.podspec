require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-webview-bridge"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.author       = package["author"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/mypthub/react-native-webview-bridge", :tag => "#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"
  s.dependency "React"
  s.dependency "react-native-webview"
end