#
# Be sure to run `pod lib lint QNStringCrypto.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QNStringCrypto'
  s.version          = '0.2.0'
  s.summary          = 'Simple quick crypto support for string'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Can simple using it for create some crypto method to string like sha1, md5, base64encoding with only 1 line of code'

  s.homepage         = 'https://github.com/quocnb/QNStringCrypto'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'quocnb' => 'quocnb.vnu@gmail.com' }
  s.source           = { :git => 'https://github.com/quocnb/QNStringCrypto.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.13'
  s.swift_version = '4.2'

  s.source_files = 'QNStringCrypto/**/*.swift'

  # s.resource_bundles = {
  #   'QNStringCrypto' => ['QNStringCrypto/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
