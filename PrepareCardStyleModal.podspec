Pod::Spec.new do |spec|
  spec.name         = "PrepareCardStyleModal"
  spec.version      = "0.0.2"
  spec.summary      = "Return modal in iOS 13 to previous version."
  spec.description  = <<-DESC
Easily change cardstyle modal to fullscreen or prevent slides from closing in iOS13.
                   DESC

  spec.screenshots  = 'https://github.com/JeaSungLEE/PrepareCardStyleModal/blob/master/Images/origin.gif',
                      'https://github.com/JeaSungLEE/PrepareCardStyleModal/blob/master/Images/fullscreen.gif',
                      'https://github.com/JeaSungLEE/PrepareCardStyleModal/blob/master/Images/preventslide.gif'
  spec.homepage     = "https://github.com/JeaSungLEE/PrepareCardStyleModal"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { "JeaSung Lee" => "wotjdzz1@naver.com" }
  spec.platform     = :ios
  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = '9.0'
  spec.source       = { :git => "https://github.com/JeaSungLEE/PrepareCardStyleModal.git", :tag => "#{spec.version}" }

  spec.source_files  = "Classes", "Classes/**/*.{h,m}", "*.swift"
  spec.exclude_files = "Classes/Exclude"
end
