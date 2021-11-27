# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-antarctica"
  spec.version       = "0.1.0"
  spec.authors       = ["SdtElectronics"]
  spec.email         = ["null@std.uestc.edu.cn"]

  spec.summary       = "Antarctica theme for jekyll"
  spec.homepage      = "https://github.com/SdtElectronics/jekyll-theme-antarctica"
  spec.license       = "GPL"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.3"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
end
