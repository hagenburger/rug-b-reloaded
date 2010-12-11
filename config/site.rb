require 'bundler'
Bundler.setup

require 'compass'
Compass.add_project_configuration('config/compass.rb')

configuration.haml_options = {
  :format => :html5,
  :attr_wrapper => '"'
}

configuration.preview_server_port = 3117

ROOT = File.dirname(__FILE__)
JAVASCRIPTS_PATH = File.join(ROOT, 'site', 'javascripts')

require "jammit"
Jammit.load_configuration(File.join(ROOT, 'config', 'assets.yml'))
Jammit.packager.precache_all(JAVASCRIPTS_PATH, ROOT) if ARGV[0] == 'build'

# PROJECT CONFIGURATION

LANG = "en"
DESCRIPTION = ""
AUTHOR = "Nico Hagenburger"
