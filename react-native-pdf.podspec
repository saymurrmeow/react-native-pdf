require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'react-native-pdf'
  s.version        = package['version']
  s.summary        = package['summary']
  s.description    = package['description']
  s.author         = package['author']['name']
  s.license        = package['license']
  s.homepage       = package['homepage']
  s.source         = { :git => 'https://github.com/saymurrmeow/react-native-pdf.git#develop', :tag => "v#{s.version}" }
  s.requires_arc   = true
  s.platform       = :ios, '8.0'
  s.source_files   = 'ios/**/*.{h,m}'
  s.dependency     'React-Core'
end
