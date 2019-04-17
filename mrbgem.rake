require "#{MRUBY_ROOT}/lib/mruby/source"

MRuby::Gem::Specification.new('mruby-sysinfo') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Giovanni Sakti'
  spec.version = '0.0.1'
  spec.add_dependency('mruby-print')
  spec.add_dependency('mruby-mtest')
  spec.add_dependency('mruby-regexp-pcre', github: 'iij/mruby-regexp-pcre')
  spec.add_dependency('mruby-os', github: 'appPlant/mruby-os')
end