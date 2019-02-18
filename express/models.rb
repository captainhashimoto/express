ActiveRecord::Base.establish_connection("sqlite3:db/development.db")

class History < ActiveRecord::Base
end

group :production do
  gem 'pg' , '~>0.18'
end

group :development do
  gem 'sqlite3'
end

require 'bundler/setup'
Bundler.require

if development?
  ActiveRecord::Base.establish_connection('sqlite3:db/development.db')
end

class History < ActiveRecord::Base
end