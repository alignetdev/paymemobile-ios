#
#  Be sure to run `pod spec lint PaymeApi.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = 'PaymeMobile'
  s.version      = '0.0.5'
  s.summary      = 'Una breve descripción de PaymeMobile.'
  s.homepage     = 'https://www.alignet.com/'
  s.license      = 'MIT'
  s.author       = { 'Alignet' => 'miguel.tomairo@alignet.com' }
  s.platform     = :ios
  s.source       = { :http => 'https://raw.githubusercontent.com/alignetdev/paymemobile-ios/master/Binario/PaymeMobile.zip' }
  s.documentation_url = 'https://github.com/alignetdev/paymemobile-ios'
  s.ios.deployment_target = '9.0'
  s.ios.vendored_frameworks = 'PaymeMobile.framework'


end
