# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-destroy-provisioner/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-destroy-provisioner"
  spec.version       = Vagrant::Destroy::Provisioner::VERSION
  spec.authors       = ["Masahiro Nagano"]
  spec.email         = ["kazeburo@gmail.com"]
  spec.summary       = %q{vagrant-destroy-provisioner allows a VM to be destroyed as a provisioning step}
  spec.description   = %q{vagrant-destroy-provisioner allows a VM to be destroyed as a provisioning step}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
