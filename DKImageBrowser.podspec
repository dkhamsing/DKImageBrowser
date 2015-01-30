Pod::Spec.new do |s| 
  s.name         = 'DKImageBrowser'

  s.version      = '0.1.3'

  s.summary      = 'Scrolling Tab iOS Control.'

  s.description  = 'iOS Image Browser with a Thumbnail Strip'

  s.homepage     = 'https://github.com/dkhamsing/DKImageBrowser'
 
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = { 'dkhamsing' => 'dkhamsing8@gmail.com' }
  
  s.social_media_url   = 'http://twitter.com/dkhamsing'
   
  s.platform     = :ios, '7.0'
 
  s.source       = { :git => 'https://github.com/dkhamsing/DKImageBrowser.git', :tag => 'v0.1.3' }

  s.source_files  = 'DKImageBrowser/*'
  
  s.requires_arc = true
end
