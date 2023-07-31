Spina::Theme.register do |theme|
  theme.name = 'dcl'
  theme.title = 'DCL'

  theme.parts = [
    {name: 'body', title: "body", part_type: "Spina::Parts::Text"},
    {name: 'heading', title: "Heading", part_type: "Spina::Parts::Line"},
    {
      name: 'tag',
      title: "Tag",
      hint: "Subsets of a specific service",
      parts: %w(heading),
      part_type: "Spina::Parts::Repeater"
    }
  ]

  theme.view_templates = [
    {name: 'homepage', title: 'Home', parts: %w(body)},
    {name: 'works', title: 'Works', parts: %w(body)},
    {name: 'work', title: 'Work', parts: %w(body)},
    {name: 'services', title: 'Services', parts: %w(body)},
    {name: 'service', title: 'Service', parts: %w(body tag)},
    {name: 'about', title: 'About', parts: %w(body)},
    {name: 'privacy', title: 'Privacy Policy', parts: %w(body)},
    {name: 'terms', title: 'Terms of Use', parts: %w(body)}
  ]

  theme.custom_pages = [
    {name: 'homepage', title: 'Homepage', deletable: false, view_template: "homepage"},
    {name: 'works', title: 'Works', deletable: false, view_template: "works"},
    {name: 'services', title: 'Services', deletable: false, view_template: "services"},
    {name: 'about', title: 'About', deletable: false, view_template: "about"},
    {name: 'privacy', title: 'Privacy Policy', deletable: false, view_template: "privacy"},
    {name: 'terms', title: 'Terms of Use', deletable: false, view_template: "terms"}
  ]

  theme.navigations = [
    {name: 'main', label: 'Main navigation'},
    {name: 'sub', label: 'Sub navigation'}
  ]

  theme.resources = [
    {name: 'works', label: "Works", view_template: "work", slug: "works"},
    {name: 'services', label: "Services", view_template: "service", slug: "services"}
  ]
end