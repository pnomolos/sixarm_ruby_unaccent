require 'mkmf'
unless find_header("unac.h")
  abort "unac is missing.  Please install unac"
end
unless find_library('unac', 'unac_string')
  abort "unac is missing.  please install unac"
end

create_makefile('sixarm_ruby_unaccent')
