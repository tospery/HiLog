Pod::Spec.new do |s|
  s.name             = 'HiLog'
  s.version          = '1.0.0'
  s.summary          = 'Logger system layer.'
  s.description      = <<-DESC
						Logger system layer using Swift.
                       DESC
  s.homepage         = 'https://github.com/tospery/HiLog'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'YangJianxiang' => 'tospery@gmail.com' }
  s.source           = { :git => 'https://github.com/tospery/HiLog.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.swift_version = '5.3'
  s.ios.deployment_target = '16.0'
  s.frameworks = 'Foundation'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'HiLog/Core/**/*'
  end
  
  s.subspec 'SwiftyBeaver' do |ss|
    ss.source_files = 'HiLog/SwiftyBeaver/**/*'
  	ss.dependency 'HiLog/Core'
  	ss.dependency 'SwiftyBeaver', '~> 2.0'
  end
  
end
