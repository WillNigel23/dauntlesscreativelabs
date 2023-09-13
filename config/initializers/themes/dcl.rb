Spina::Theme.register do |theme|
  theme.name = 'dcl'
  theme.title = 'DCL'

  theme.parts = [
    {name: 'heading', title: "Heading", part_type: "Spina::Parts::Line"},
    {
      name: 'tag',
      title: "Tag",
      hint: "Subsets of a specific service",
      parts: %w(heading),
      part_type: "Spina::Parts::Repeater"
    },
    # GENERAL PARTS
    {name: 'body', title: "Body", part_type: "Spina::Parts::Text"},
    {name: 'banner', title: "Banner Image", part_type: "Spina::Parts::Image"},
    {name: 'preview', title: "Preview Image", part_type: "Spina::Parts::Image"},
    {name: 'image', title: "Content Image", part_type: "Spina::Parts::Image"},
    {name: "video", title: "Video File", hint: "Optional", part_type: "Spina::Parts::Attachment"},

    # CONTENT PARTS
    {name: 'category', title: "Category", hint: "Category for content", options: ["creatives", "production", "web_dev", "esports", "nft"], part_type: "Spina::Parts::Option"},
    {name: 'color', title: "Color", hint: "Format: `bg-[#fffff] text-[#000000]`", part_type: "Spina::Parts::Line"},
    {
      name: 'section', 
      title: "Section", 
      hint: "Contains blocks of content",
      parts: %w(heading color video block),
      part_type: "Spina::Parts::Repeater"
    },
    {
      name: 'block',
      title: "Block",
      hint: "Block of content",
      parts: %w(body),
      part_type: "Spina::Parts::Repeater"
    },

    # SERVICES PARTS
    {name: 'tagslug', title: "Tag Slug", part_type: "Spina::Parts::Line"},
  ]

  theme.view_templates = [
    {name: 'homepage', title: 'Home', parts: %w(body)},
    {name: 'works', title: 'Works', parts: %w(body)},
    {name: 'work', title: 'Work', parts: %w(banner preview category section)},
    {name: 'services', title: 'Services', parts: %w(body)},
    {name: 'service', title: 'Service', parts: %w(tagslug body tag)},
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