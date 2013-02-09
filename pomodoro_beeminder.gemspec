# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pomodoro_beeminder/version'

Gem::Specification.new do |gem|
  gem.name          = "pomodoro_beeminder"
  gem.version       = PomodoroBeeminder::VERSION
  gem.authors       = ["Pankaj More"]
  gem.email         = ["pankajmore@gmail.com"]
  gem.description   = %q{Beemind your Pomodoros}
  gem.summary       = %q{Track your pomodoros using beeminder}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "beeminder"
  gem.default_executable = "pom"
end
