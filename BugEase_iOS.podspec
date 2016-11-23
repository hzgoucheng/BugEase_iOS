
Pod::Spec.new do |s|


  s.name         = "BugEase_iOS"
  s.version      = "1.2"
  s.summary      = "Bug reporting for mobile apps, improve your app anytime, 				anywhere. Learn more at https://bugease.hz.netease.com."
  s.homepage     = "https://bugease.hz.netease.com"

  s.license      = { 
	:type => 'NetEase', 
	:text => <<-LICENSE
                Copyright (C) 2016 BugEase.
                Permission is hereby granted to use this framework as is,modification are not allowed.
                All rights reserved. 
	LICENSE
	}


  s.author       = { "勾承甫" => "hhzgouchengfu@corp.netease.com" }
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/hzgoucheng/BugEase_iOS.git", :tag => s.version.to_s }
  s.source_files        = 'BugEase_iOS.framework/Headers/*.{h}'
  s.resources           = 'BugEase_ios_Bundle.bundle'
  s.preserve_paths      = 'BugEase_iOS.framework/*', 'BugEase_ios_Bundle.bundle'
  s.frameworks          = 'UIKit','BugEase_iOS','CoreFoundation'
  s.library = 'z.1.2.5'
  s.xcconfig            = {'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/BugEase_iOS/"','LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/BugEase_iOS/"','OTHER_LDFLAGS'=>'-ObjC'} 
  s.requires_arc = true	

end
