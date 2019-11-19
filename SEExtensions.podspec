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
  spec.summary      = "扩展"
  spec.description  = <<-DESC
                   swift extensions
                   DESC

  spec.homepage         = "https://github.com/jojojoe/SEExtension"
  spec.license          = { :type => "MIT", :file => "LICENSE" }
  spec.author           = { "Joe" => "804463232@qq.com" }
  spec.social_media_url = "https://baidu.com"
  spec.swift_version    = '5.0'

  spec.platform              = :ios, "11.4+"
  spec.ios.deployment_target = "11.4"

  spec.source           = { :git => "https://github.com/jojojoe/SEExtension.git", :tag => "#{spec.version}" }
  spec.source_files     = "SEExtensions/**/*.{h,m,swift,xib}"
  #spec.resource_bundles = { 'SEExtensions' => ['SEExtensions/SEExtensions.bundle/*.png'] }
  spec.frameworks       = 'UIKit', 'Photos', 'PhotosUI','Foundation'
  spec.dependency 'Kingfisher'
  spec.dependency 'SwifterSwift'
  spec.dependency 'Alertift'
end
