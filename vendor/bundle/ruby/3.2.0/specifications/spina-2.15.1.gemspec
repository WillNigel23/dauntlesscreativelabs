# -*- encoding: utf-8 -*-
# stub: spina 2.15.1 ruby lib

Gem::Specification.new do |s|
  s.name = "spina".freeze
  s.version = "2.15.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/SpinaCMS/Spina/issues", "changelog_uri" => "https://github.com/SpinaCMS/Spina/blob/main/CHANGELOG.md", "documentation_uri" => "https://www.spinacms.com/docs", "homepage_uri" => "https://www.spinacms.com", "source_code_uri" => "https://github.com/SpinaCMS/Spina" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Bram Jetten".freeze]
  s.date = "2023-06-28"
  s.description = "CMS".freeze
  s.email = ["bram@denkgroot.com".freeze]
  s.homepage = "https://www.spinacms.com".freeze
  s.licenses = ["MIT".freeze]
  s.post_install_message = "\n    Spina v2.14 includes a new migration, don't forget to run spina:install:migrations.\n    \n    For details on this specific release, refer to the CHANGELOG file.\n  ".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.7.0".freeze)
  s.rubygems_version = "3.4.12".freeze
  s.summary = "Spina".freeze

  s.installed_by_version = "3.4.12" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<rails>.freeze, [">= 6.0"])
  s.add_runtime_dependency(%q<sprockets-rails>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<pg>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<bcrypt>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<image_processing>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<ancestry>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<breadcrumbs_on_rails>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<kaminari>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<mobility>.freeze, [">= 1.1.3"])
  s.add_runtime_dependency(%q<rack-rewrite>.freeze, [">= 1.5.0"])
  s.add_runtime_dependency(%q<attr_json>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<view_component>.freeze, [">= 2.32", "< 4.0"])
  s.add_runtime_dependency(%q<importmap-rails>.freeze, [">= 0.7.6"])
  s.add_runtime_dependency(%q<turbo-rails>.freeze, [">= 0.9", "< 2.0"])
  s.add_runtime_dependency(%q<stimulus-rails>.freeze, [">= 0.7.0"])
  s.add_runtime_dependency(%q<babosa>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<jsonapi-serializer>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<browser>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<tailwindcss-rails>.freeze, [">= 2.0.0"])
end
