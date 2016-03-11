#
#  Be sure to run `pod spec lint AlertTitleView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "AlertTitleView"
  s.version      = "1.0.0"
  s.summary      = "Small titleTip for iOS"
  s.description  = "this is a small titleTip show."
  s.homepage     = "https://github.com/OnePiece-D/AlertTitleView"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "OnePiece-D" => "952942236@qq.com" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/OnePiece-D/AlertTitleView.git", :tag => s.version.to_s }
  s.source_files  = 'WYLAlertTipView', 'WYLAlertTipView/**/*.{h,m}'
  s.requires_arc = true
end
