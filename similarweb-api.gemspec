lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "similarweb/version"
# require "similarweb"

Gem::Specification.new do |spec|
  spec.name          = "similarweb-api"
  spec.version       = Similarweb::VERSION
  spec.authors       = ["Aleksey Yudin"]
  spec.email         = ["qaa12work@gmail.com"]

  spec.summary       = %q{Simple ruby wrapper for SimilarWeb API }
  spec.description   = %q{Simple ruby wrapper for SimilarWeb API }
  spec.homepage      = ""

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

  spec.required_ruby_version = '>= 2.1'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "dry-configurable"
  spec.add_development_dependency "pry-byebug"
  spec.add_runtime_dependency "faraday"
  # gem.add_runtime_dependency("json", ">= 1.8")
end
