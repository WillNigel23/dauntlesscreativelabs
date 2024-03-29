# -*- encoding: utf-8 -*-
# stub: hotwire-livereload 1.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "hotwire-livereload".freeze
  s.version = "1.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kirill Platonov".freeze]
  s.date = "2022-12-26"
  s.email = ["mail@kirillplatonov.com".freeze]
  s.homepage = "https://github.com/kirillplatonov/hotwire-livereload".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.12".freeze
  s.summary = "Automatically reload Hotwire Turbo when app files are modified.".freeze

  s.installed_by_version = "3.4.12" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<rails>.freeze, [">= 6.0.0"])
  s.add_runtime_dependency(%q<listen>.freeze, [">= 3.0.0"])
end
