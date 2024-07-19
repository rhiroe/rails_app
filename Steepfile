target :app do
  signature 'sig'
  check 'app', 'lib'

  if (dep_path = Pathname('rbs_src.dep')).file?
    # Stop loading libraries through rbs-collection
    disable_collection

    # gem毎のリポジトリ直下のRBSファイル
    signature 'sig/rbs-src/*/*.rbs'
    # gem毎のテストディレクトリを除いたディレクトリ内のRBSファイル
    signature 'sig/rbs-src/*/[^_]*/**/*.rbs'

    # rbs_collection.lock.yamlにてsource typeがstdlibになっているもの
    dep_path.readlines.each { |lib| library(lib.chomp) }
  end
end
