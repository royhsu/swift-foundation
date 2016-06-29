Pod::Spec.new do |spec|
  spec.name             = 'TWFoundation'
  spec.version          = '0.1'
  spec.license          = 'MIT'
  spec.homepage         = 'https://github.com/royhsu/swift-foundation'
  spec.authors          = { 'Tiny World' => 'roy.hsu@tinyworld.cc' }
  spec.summary          = 'A personalized foundation framework for Swift.'
  spec.source           = { :git => 'https://github.com/royhsu/swift-foundation.git', :head }

  spec.ios.deployment_target = '8.0'

  spec.source_files     = 'Sources/*.swift'
end