#
# Be sure to run `pod lib lint YKLayoutUtilityComponent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YKLayoutUtilityComponent'
  s.version          = '1.0.2'
  s.summary          = '布局工具集合，可以分模块进行集成'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://gitlab.yeahka.com/App/iOS/YKComponents/YKLayoutUtilityComponent'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'v2top1@163.com' => 'tomliu@yeahka.com' }
  s.source           = { :git => 'http://gitlab.yeahka.com/App/iOS/YKComponents/YKLayoutUtilityComponent.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'
  
  s.source_files = 'YKLayoutUtilityComponent/Classes/YKLayoutUtilityComponentHeader.h'
  
  s.subspec 'YKMasConstraintMaker' do |ss|
     ss.source_files = 'YKLayoutUtilityComponent/Classes/YKMasConstraintMaker/*.{h,m}'
    
   end

  
  s.dependency 'Masonry'
  
  # s.frameworks = 'UIKit', 'MapKit'
   
end
