# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_indiapincode"
  spec.version       = "1.2.6"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "India Pincode Lookup API - Ruby Client"
  spec.description   = "India Pincode Lookup is an Indian PIN code API covering all ~19,300 PIN codes and ~157,000 post offices. Look up a PIN code to get its district, state, ISO state code, India Post circle, region, division and post office count, or search by post office, district or state, while paid plans add coordinates, every post office with its type and delivery status, and nearby PIN codes by distance."
  spec.homepage      = "https://apiverve.com/marketplace/indiapincode?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/indiapincode-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/indiapincode"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
