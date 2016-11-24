

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "BugEase_iOS"
  s.version      = "1.2.2"
  s.summary      = "ios端Bug反馈SDK."

  s.homepage     = "https://bugease.hz.netease.com"
  s.license      = {
                :type =>"MIT",
                :text =>  <<-LICENSE 
                Copyright (C) 2016 BugEase.
                Permission is hereby granted to use this framework as is, modification are not allowed.
                All rights reserved.
                
                LICENSE
  }

  s.author       = { "勾承甫" => "hhzgouchengfu@corp.netease.com" }

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/hzgoucheng/BugEase_iOS.git"}

  s.source_files  = 'BugEase_iOS.framework/Headers/*.{h}'

  s.resources = 'BugEase_ios_Bundle.bundle'

  s.preserve_paths = "BugEase_iOS.framework", "BugEase_ios_Bundle.bundle"

 # s.frameworks = "BugEase_iOS"

  s.libraries = "z.1.2.5"

  s.requires_arc = true
  #s.vendored_frameworks = 'BugEase_iOS.framework'
  s.xcconfig = { "FRAMEWORK_SEARCH_PATHS" => '"$(PODS_ROOT)/BugEase_iOS/"' ,"OTHER_LDFLAGS" =>"-ObjC"}
  # s.dependency "JSONKit", "~> 1.4"

end
