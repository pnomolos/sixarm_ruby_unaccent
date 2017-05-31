require "rake/extensiontask"

# def gemspec
#   @clean_gemspec ||= eval(File.read(File.expand_path('../../sixarm_ruby_unaccent.gemspec', __FILE__)))
# end

Rake::ExtensionTask.new("sixarm_ruby_unaccent") do |ext|
  ext.lib_dir = File.join 'lib', 'sixarm_ruby_unaccent'
  CLEAN.include "#{ext.lib_dir}/*.#{RbConfig::CONFIG['DLEXT']}"
end
Rake::Task[:test].prerequisites << :compile
