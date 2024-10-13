
Pod::Spec.new do |s|
  s.name             = 'SampleDevpod'
  s.version          = '0.3.0'
  s.summary          = 'This description is used to generate tags and improve search results.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "Sample application for creating a devpod which can be used in Sample application"
  s.authors = "Sample author information added"
  s.homepage         = 'https://github.com/564100/SampleDevpod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  
  s.source           = { :git => 'https://github.com/564100/SampleDevpod.git', :tag => s.version.to_s }
  

  s.ios.deployment_target = '15.0'

  s.source_files = 'SampleDevpod/Classes/**/*'
  s.exclude_files = 'SampleDevpod/Classes/QA/**/*'

  s.subspec 'QA' do |debug_varient|
    debug_varient.source_files =  ['SampleDevpod/Classes/QA/**/*']
    debug_varient.dependency 'Mocker'
    debug_varient.dependency 'SwiftLint'
  end 

  
end
