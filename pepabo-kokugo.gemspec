lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pepabo/kokugo"

Gem::Specification.new do |spec|
  spec.name          = "pepabo-kokugo"
  spec.version       = Pepabo::Kokugo::VERSION
  spec.authors       = ["bake0937"]
  spec.email         = ["sadayasu.info@gmail.com"]

  spec.summary       = %q{ペパボこくご変換ライブラリ}
  spec.description   = %q{与えられた文字列をペパボ国語に変換します。}
  spec.homepage      = "https://github.com/june29/pepabo-kokugo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
