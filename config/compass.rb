require 'bundler'
Bundler.setup

require 'html5-boilerplate'

project_path      = File.join(File.dirname(__FILE__), '..', 'src')
sass_dir          = "stylesheets"         # dir containing Sass/Compass source files
http_path         = ""                    # root when deployed
css_dir           = "../site/stylesheets" # final CSS
images_dir        = "../site/images"      # final images
http_images_path  = "../images"
output_style      = ARGV[0] == 'build' ? :compressed : :expanded
