# -*- coding: utf-8 -*-
require "bundler"
require "rake"
require "rake/testtask"

Dir['tasks/*.rake'].sort.each { |f| load f }

Rake::TestTask.new(:test) do |t|
  t.libs.push("lib", "test")
  t.pattern = "test/**/*.rb"
end
task :default => [:test]
