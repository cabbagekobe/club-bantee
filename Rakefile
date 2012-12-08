require 'net/https'
require 'middleman-gh-pages'

desc "rackup middleman server locally"
task :default do
  system("middleman server")
end

assets = {
  # jQuery
  'source/js/jquery.js' => 'http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js',
  # jQuery.minify
  'source/js/jquery.min.js' => 'http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js',
  # Modernizr.js
  'source/css/normalize.css' => 'https://raw.github.com/Modernizr/Modernizr/master/modernizr.js',
  # Normalize.css
  'source/css/normalize.css' => 'https://raw.github.com/necolas/normalize.css/master/normalize.css',
}

desc 'setup project'
task 'setup' do
  puts 'download assets...'
  FileUtils.mkdir_p('source/js/')
  FileUtils.mkdir_p('source/css/')
  assets.each do |filepath, url|
    puts "#{url} => #{filepath}"
    File.open(filepath, 'w') do |f|
      uri = URI.parse(url)
      http = Net::HTTP.new(uri.host, uri.port)
      if uri.port == 443
        http.use_ssl = true
      end
      f << http.start { http.get(uri.request_uri).body }
    end
  end
end
