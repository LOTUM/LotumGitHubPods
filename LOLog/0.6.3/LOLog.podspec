Pod::Spec.new do |s|
  s.name         = 'LOLog'
  s.version      = '0.6.3'
  s.summary      = 'Log'
  s.author       = { 'Lotum GmbH' => 'info@lotum.de' }
  s.homepage     = "http://www.lotum.com"
  s.license      = 'Proprietary'
  s.platform     = :ios, '10.0'
  s.swift_version = '5.1'
  s.source       = { :git => "git@github.com:LOTUM/LOLog.git", :tag => s.version.to_s }
  s.dependency 'CocoaLumberjack'
  s.dependency 'Reqres'

  s.default_subspec = 'All'

  s.subspec 'All' do |ssall|
	ssall.source_files = '*.{h,m,swift}'
  end

  s.subspec 'Formatter' do |ssformat|
	ssformat.dependency 'LOLog/All'
	ssformat.source_files  = 'LOLogConsoleFormatter.{h,m}', 'LOLogFormatter.{h,m}'
  end
end
