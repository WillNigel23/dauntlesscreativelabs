# -*- encoding: utf-8 -*-
# stub: attr_json 2.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "attr_json".freeze
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "homepage_uri" => "https://github.com/jrochkind/attr_json", "source_code_uri" => "https://github.com/jrochkind/attr_json" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jonathan Rochkind".freeze]
  s.bindir = "exe".freeze
  s.date = "2023-07-13"
  s.description = "ActiveRecord attributes stored serialized in a json column, super smooth.\nTyped and cast like Active Record. Supporting nested models, dirty tracking, some querying\n(with postgres jsonb contains), and working smoothy with form builders.\n\nUse your database as a typed object store via ActiveRecord, in the same models right next to\nordinary ActiveRecord column-backed attributes and associations. Your json-serialized attr_json\nattributes use as much of the existing ActiveRecord architecture as we can.".freeze
  s.email = ["jonathan@dnil.net".freeze]
  s.homepage = "https://github.com/jrochkind/attr_json".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6.0".freeze)
  s.rubygems_version = "3.4.12".freeze
  s.summary = "ActiveRecord attributes stored serialized in a json column, super smooth.".freeze

  s.installed_by_version = "3.4.12" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activerecord>.freeze, [">= 6.0.0", "< 7.1"])
  s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
  s.add_development_dependency(%q<rake>.freeze, [">= 10.0"])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.7"])
  s.add_development_dependency(%q<yard-activesupport-concern>.freeze, [">= 0"])
  s.add_development_dependency(%q<appraisal>.freeze, ["~> 2.2"])
  s.add_development_dependency(%q<rexml>.freeze, [">= 0"])
  s.add_development_dependency(%q<webrick>.freeze, ["~> 1.0"])
end
