Gem::Specification.new do |spec|
	spec.name          = "watery"
	spec.version       = "1.0.0"
	spec.authors       = ["Brennan K. Brown"]
	spec.email         = ["mail@brennanbrown.ca"]

	spec.summary       = "A minimalist, bare-bones theme for Jekyll only using the Water.css framework while still following the best practices for accessibility and search-engine optimization."
	spec.homepage      = "https://github.com/brennanbrown/watery"
	spec.license       = "MIT"

	spec.metadata["plugin_type"] = "theme"

	spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|(LICENSE|README)((\.(txt|md|markdown)|$)))!i) }

	spec.add_runtime_dependency "jekyll", "~> 3.5"

	spec.add_development_dependency "bundler", "> 1.15"
	spec.add_development_dependency "rake", "~> 12.0"
end

