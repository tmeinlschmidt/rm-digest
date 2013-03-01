unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  #app.files.unshift Dir.glob(File.join(app.project_dir, 'app/lib/**/*.rb'))

  Dir.glob(File.join(File.dirname(__FILE__), 'rm-digest/*.rb')).each do |file|
    app.files.unshift(file)
  end

  digest_vendor = File.expand_path(File.join(File.dirname(__FILE__), '../vendor/MD5SHA1Digest'))
  app.vendor_project(digest_vendor, :xcode, headers_dir: 'MD5SHA1Digest')
end

require "rm-digest/version"

module RmDigest

end
