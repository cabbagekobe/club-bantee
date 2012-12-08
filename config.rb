require "middleman-smusher"

compass_config do |config|
  config.output_style = :nested
  # config.output_style = :expanded or :nested or :compact or :compressed
  # config.line_comments = true or false
end

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'
set :build_dir, 'www'

# Build-specific configuration
configure :build do
  # Minify Stylesheet on build
  activate :minify_css
  # Minify Javascript on build
  activate :minify_javascript
  # Cache buster in query string
  activate :cache_buster
  # Use relative URLs
  activate :relative_assets
  # Compress PNGs after build
  #activate :smusher
end
