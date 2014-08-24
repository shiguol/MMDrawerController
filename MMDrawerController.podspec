Pod::Spec.new do |s|
  s.name         = "MMDrawerController"
  s.version      = "0.5.6.1"
  s.source       = { :git => "https://github.com/shiguol/MMDrawerController.git", :tag => "0.5.6.1" }
  s.platform     = :ios, '5.0'
  s.requires_arc = true  
  s.subspec 'Core' do |ss|
    ss.source_files = 'MMDrawerController/MMDrawerController*', 'MMDrawerController/UIViewController+MMDrawerController*'
    ss.framework  = 'QuartzCore'
  end
  
  s.subspec 'MMDrawerBarButtonItem' do |ss|
      ss.source_files = 'MMDrawerController/MMDrawerBarButtonItem.{h,m}'
      ss.dependency 'MMDrawerController/Core'
    end
    
  s.subspec 'MMDrawerVisualStates' do |ss|
      ss.source_files = 'MMDrawerController/MMDrawerVisualState.{h,m}'
      ss.dependency 'MMDrawerController/Core'
    end
    
  s.subspec 'Subclass' do |ss|
      ss.source_files = 'MMDrawerController/MMDrawerController+Subclass.h'
      ss.dependency 'MMDrawerController/Core'
  end
end
