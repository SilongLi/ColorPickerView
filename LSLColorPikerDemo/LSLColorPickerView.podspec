#
#  Be sure to run `pod spec lint LSLColorPickerView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
 
  s.name         = "LSLColorPickerView"
  s.version      = "1.0.0"
  s.summary      = "一个很简洁实用的颜色选择器。" 
  s.description  = <<-DESC
                    学习Keynote，写了个属于自己的颜色选择器，用CALayer和其子类显示颜色条，用UIWindow自己封装成MenuController等等，代码高度内聚（一个类搞定），且简单实用。
                   DESC

  s.homepage     = "https://github.com/SilongLi/ColorPickerView"  
  s.license      = { :type => "MIT"}   
  s.author       = { "Bruce Li" => "lisilongios@163.com" }   
  s.platform     = :ios
  s.platform     = :ios, "9.0"  
  s.source       = { :git => "https://github.com/SilongLi/ColorPickerView.git", :tag => "1.0.0" }
  s.source_files = "LSLColorPikerDemo/ColorPickerClass/*"
  s.requires_arc = true

end
