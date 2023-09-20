# frozen_string_literal: true

require_relative "lib/sincer/version"

Gem::Specification.new do |spec|
  spec.name = "sincer"
  spec.version = Sincer::VERSION
  spec.authors = ["MichiKaneko"]
  spec.email = ["mcanecoo@gmail.com"]

  spec.summary = "Getting how many minutes, hours, days, weeks, months, years have passed since the specified date."
  spec.description = "This gem is used to get how many minutes, hours, days, weeks, months, years have passed since the specified date."
  spec.homepage = "https://github.com/mikaneco/sincer"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "#{spec.homepage}/blob/main/lib/sincer/version.rb"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
