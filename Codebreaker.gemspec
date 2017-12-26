# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Codebreaker/version'

Gem::Specification.new do |spec|
  spec.name          = 'Codebreaker'
  spec.version       = Codebreaker::VERSION
  spec.authors       = ['shitikovkirill']
  spec.email         = ['sh.kiruh@gmail.com']

  spec.summary       = 'Codebreaker is a logic game in which a code-breaker tries to break a secret code created by a code-maker.'
  spec.description   = 'Codebreaker is a logic game in which a code-breaker tries to break a secret code created by a
code-maker. The code-maker, which will be played by the application we’re going to write, creates a secret code of four numbers between 1 and 6.
The code-breaker then gets some number of chances to break the code. In each turn, the code-breaker makes a guess of four numbers.
The code-maker then marks the guess with up to four + and - signs. A + indicates an exact match: one of the numbers in the
guess is the same as one of the numbers in the secret code and in the same position. A - indicates a number match: one of
the numbers in the guess is the same as one of the numbers in the secret code but in a different position.'
  spec.homepage      = 'http://WebWave.co/'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ['codebreaker']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
