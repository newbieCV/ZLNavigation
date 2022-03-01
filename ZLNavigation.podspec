#
# Be sure to run `pod lib lint ZLNavigation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZLNavigation'
  s.version          = '0.0.1'
  s.summary          = 'A short description of ZLNavigation.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zhangzongyu00/ZLNavigation'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '章肿鱼' => 'zhangzongyu00@gmail.com' }
  s.source           = { :git => 'https://github.com/zhangzongyu00/ZLNavigation.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'ZLNavigation/Classes/**/*'
  
  # apikey：15f252085c1875f2c96429e37a437568
  s.dependency 'AMap3DMap-NO-IDFA', '~> 8.1.0'
  s.dependency 'AMapSearch-NO-IDFA', '~> 8.1.0'
  s.dependency 'AMapLocation-NO-IDFA', '~> 2.8.0'
  s.dependency 'AMapFoundation-NO-IDFA', '~> 1.6.9'
  
  # s.resource_bundles = {
  #   'ZLNavigation' => ['ZLNavigation/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
