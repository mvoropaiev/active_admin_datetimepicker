# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_admin_datetimepicker/version'

Gem::Specification.new do |spec|
  spec.name          = 'active_admin_datetimepicker'
  spec.version       = ActiveAdminDatetimepicker::VERSION
  spec.authors       = ['Igor Fedoronchuk']
  spec.email         = ['fedoronchuk@gmail.com']

  spec.summary       = 'datetimepicker extension for ActiveAdmin'
  spec.description   = 'Integrate jQuery xdan datetimepicker plugin to ActiveAdmin'
  spec.homepage      = 'https://github.com/activeadmin-plugins/activeadmin_datetimepicker'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activeadmin', ['>= 2.0.0.rc1', '< 3.0']
  spec.add_dependency 'xdan-datetimepicker-rails', '~> 2.5.4'
end
