# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'material_kit/version'

Gem::Specification.new do |spec|
  spec.name          = "material_kit"
  spec.version       = MaterialKit::VERSION
  spec.authors       = ["Tim"]
  spec.email         = ["timshingyu@gmail.com"]

  spec.summary       = %q{Material Kit for Rails Version}
  spec.description   = %q{Material Kit for Rails Version is a rubygems. Packed with useful rails generators to generate your rails view in no time. One more thing, it's production ready, so no need to worry about the assets pipeline issues on production server anymore.}
  spec.homepage      = "https://uiready.io/items/material-kit-rails-version"

  spec.files = Dir["{app,lib}/**/*"].reject{ |f|
                  f['app/assets/javascripts/material_kit/jquery.min.js'] ||
                  f['mk_alpha.zip'] ||
                  f['x_material_kit_beta.zip'] } +
               Dir["*.gemspec"] +
               ["README.md"]

  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3.1"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.post_install_message = <<-DOC
    Congratulation, Material Kit for Rails Version has been installed in your local machine.

    You can now run the following generator to install Material Kit to your rails app.

    rails generate material_kit:install
  DOC

end
