Pod::Spec.new do |s|

  s.license      = "MIT"
  s.author       = { "qqc" => "20599378@qq.com" }
  s.platform     = :ios, "8.0"
  s.requires_arc  = true

  s.name         = "QqcProgressHUD"
  s.version      = "1.0.44"
  s.summary      = "QqcProgressHUD"
  s.homepage     = "https://github.com/xukiki/QqcProgressHUD"
  s.source       = { :git => "https://github.com/xukiki/QqcProgressHUD.git", :tag => "#{s.version}" }
  
  s.source_files  = ["QqcProgressHUD/*.{h,m}"]
  s.resource = ["QqcProgressHUD/*.bundle"]
  s.dependency  = "UIImage-Qqc"
  
  s.subspec 'ProgressHUD' do |ss|
    ss.source_files = 'QqcProgressHUD/ProgressHUD/*.{h,m}'
  end

end
