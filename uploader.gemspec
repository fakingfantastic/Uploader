$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')

module Uploader
  VERSION = "0.0.1"
end

include_files = ["init.rb", "{lib}/**/*"].map do |glob|
  Dir[glob]
end.flatten
exclude_files = [].map do |glob|
  Dir[glob]
end.flatten

spec = Gem::Specification.new do |s|
  s.name              = "uploader"
  s.version           = Uploader::VERSION
  s.author            = "Frank Lakatos"
  s.email             = "me@fakingfantastic.com"
  s.homepage          = "http://www.fakingfantastic.com"
  s.description       = "Uploader for ActiveRecord"
  s.platform          = Gem::Platform::RUBY
  s.summary           = "Uploader for ActiveRecord"
  s.files             = include_files - exclude_files
  s.require_path      = "lib"
end
