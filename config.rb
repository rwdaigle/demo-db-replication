require 'active_record'
require 'logger'

dbconfig = YAML.load(File.read('config/database.yml'))
ActiveRecord::Base.establish_connection dbconfig[ENV['RACK_ENV'] || 'development']

ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Migration.verbose = true
