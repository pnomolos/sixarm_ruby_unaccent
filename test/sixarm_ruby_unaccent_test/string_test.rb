# -*- coding: utf-8 -*-
require "sixarm_ruby_unaccent_test"

describe String do

  describe "#unaccent" do

    it "with plain" do
      "abc".unaccent.must_equal "abc"
    end

    it "with angstrom" do
      "Å".unaccent.must_equal "A"
    end

    it "with double letter" do
      "Æ".unaccent.must_equal "AE"
    end

    it "with french" do
      "déjà vu".unaccent.must_equal "deja vu"
    end

    it "with greek" do
      "νέα".unaccent.must_equal "νεα"
    end

    Dir[File.expand_path("../samples/*.txt", __FILE__)].each do |path|
      it "properly unaccents #{path}" do
        before = File.read(path)
        after = File.read(path.gsub(".txt", ".clean"))
        before.unaccent.must_equal after
      end
    end

  end

end
