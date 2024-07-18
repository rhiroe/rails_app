target :app do
  signature 'sig'
  check 'app', 'lib'

  if (dep_path = Pathname('rbs_src.dep')).file?
    # Stop loading libraries through rbs-collection
    disable_collection

    signature 'sig/rbs-src/*/*.rbs'
    signature 'sig/rbs-src/*/[^_]*/**/*.rbs'

    dep_path.readlines.each { |lib| library(lib.chomp) }
  end
end
