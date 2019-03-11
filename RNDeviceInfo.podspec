require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNDeviceInfo"
  s.version      = package['version']
  s.summary      = package['description']

  s.homepage     = "https://github.com/rebeccahughes/react-native-device-info"

  s.license      = package['license']
  s.authors      = { "Rebecca Hughes" => "rebecca@learnium.net" }
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '10.0'

  s.source       = { :git => "https://github.com/rebeccahughes/react-native-device-info.git" }

  s.source_files  = "ios/RNDeviceInfo/*.{h,m}"

  s.dependency 'React'
end
