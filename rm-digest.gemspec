# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rm-digest/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tom Meinlschmidt"]
  gem.email         = ["tomas@meinlschmidt.com"]
  gem.description   = %q{MD5 and SHA1/256 Digest}
  gem.summary       = %q{MD5 and SHA1/256 Digest}
  gem.homepage      = "https://github.com/tmeinlschmidt/rm-digest"

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rm-digest"
  gem.require_paths = ["lib"]
  gem.version       = RmDigest::VERSION
end
