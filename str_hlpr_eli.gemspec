
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "str_hlpr_eli/version"

Gem::Specification.new do |spec|
  spec.name          = "str_hlpr_eli"
  spec.version       = StrHlprEli::VERSION
  spec.authors       = ["Elena Boucher"]
  spec.email         = ["echorayne@Elenas-MacBook-Pro.local"]

  spec.summary       = "Ruby Gem Publish Demo"
  spec.description   = "This gem is a demo of how to publish gems on github"
  spec.homepage      = "https://github.com/elirayne/str_hlpr_eli.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
