# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cockpit}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Lance Pollard"]
  s.date = %q{2010-10-26}
  s.description = %q{Super DRY Configuration for Ruby, Rails, and Sinatra Apps.  With Pluggable NoSQL/SQL backends using Moneta}
  s.email = %q{lancejpollard@gmail.com}
  s.files = ["README.markdown", "MIT-LICENSE.markdown", "lib/cockpit.rb", "lib/cockpit", "lib/cockpit/stores", "lib/cockpit/stores/memory.rb", "lib/cockpit/stores/active_record.rb", "lib/cockpit/stores/file_system.rb", "lib/cockpit/stores/mongo.rb", "lib/cockpit/stores/redis.rb", "lib/cockpit/core", "lib/cockpit/core/global.rb", "lib/cockpit/core/spec.rb", "lib/cockpit/core/definition.rb", "lib/cockpit/core/store.rb", "lib/cockpit/core/helpers.rb", "lib/cockpit/core/include.rb", "lib/cockpit/core/scope.rb", "lib/cockpit/core/settings.rb"]
  s.has_rdoc = false
  s.homepage = %q{http://github.com/viatropos/cockpit}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{cockpit}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Super DRY Configuration Management for Ruby, Rails, and Sinatra Apps.  With Pluggable NoSQL/SQL backends using Moneta}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<defined-by>, [">= 0"])
    else
      s.add_dependency(%q<defined-by>, [">= 0"])
    end
  else
    s.add_dependency(%q<defined-by>, [">= 0"])
  end
end
