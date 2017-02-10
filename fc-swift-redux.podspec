Pod::Spec.new do |spec|
spec.name = "fc-swift-redux"
spec.version = "1.0.0"
spec.summary = "Redux for swift"
spec.homepage = "https://github.com/fChristenson/fc-swift-redux/tree/master"
spec.license = { type: 'MIT', file: 'LICENSE' }
spec.authors = { "Fredrik Christenson" => 'fredrik.christenson@gmail.com' }

spec.platform = :ios, "9.1"
spec.requires_arc = true
spec.source = { git: "https://github.com/fChristenson/fc-swift-redux.git", tag: "v#{spec.version}", submodules: true }
spec.source_files = "fc-swift-redux/**/*.{h,swift}"

end
