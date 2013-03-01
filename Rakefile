#!/usr/bin/env rake
require "bundler/gem_tasks"
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

#Bundler.setup
#Bundler.require 

Motion::Project::App.setup do |app|
  app.name = 'spec'
  app.files += Dir.glob(File.join(app.project_dir, 'lib/rm-digest/*.rb'))
  
  digest_vendor = File.expand_path(File.join(File.dirname(__FILE__), 'vendor/MD5SHA1Digest'))
  app.vendor_project(digest_vendor, :xcode, headers_dir: 'MD5SHA1Digest')
end
