#
#  Be sure to run `pod spec lint EasyAlbum.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "SEExtensions"
  spec.version      = "0.0.1"
  spec.summary      = "Swift扩展"
  spec.description  = "Swift扩展"

  spec.homepage         = "https://github.com/ray00178/EasyAlbum"
  spec.license          = { :type => "MIT", :file => "LICENSE" }
  spec.author           = { "Ray" => "ray00178@gmail.com" }
  spec.social_media_url = "https://twitter.com/ray00178"
  spec.swift_version    = '5.0'

  spec.platform              = :ios, "9.0+"
  spec.ios.deployment_target = "9.0"

  spec.source           = { :git => "https://github.com/ray00178/EasyAlbum.git", :tag => "#{spec.version}" }
  spec.source_files     = "EasyAlbum/**/*.{h,swift,xib}"
  spec.resource_bundles = { 'EasyAlbum' => ['EasyAlbum/EasyAlbum.bundle/*.png'] }
  spec.frameworks       = 'UIKit', 'Photos', 'PhotosUI','ImageIO'
  spec.dependency 'Kingfisher'
  spec.dependency 'SwifterSwift'
  spec.dependency 'Alertift'
end
