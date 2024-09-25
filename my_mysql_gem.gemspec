# frozen_string_literal: true

require_relative "lib/my_mysql_gem/version"

Gem::Specification.new do |spec|
  spec.name = "my_mysql_gem"
  spec.version = MyMysqlGem::VERSION
  spec.authors = ["rachityadav730"]
  spec.email = ["rachit.r.yadav@gmail.com"]

  spec.summary = "Rails application will allow to connect multilple databses by using my_mysql_gem"
  spec.description = "User can use multiple databses in rails application when using mysql"
  spec.homepage = "https://www.rachit.in.net"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/rachityadav730/my_mysql_gem.git"
  spec.metadata["changelog_uri"] = "https://github.com/rachityadav730/my_mysql_gem.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "mysql2"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
