require 'pry-byebug'
require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pg'

require_relative 'controllers/websites_controller'

require_relative 'models/db_base'
require_relative 'models/website'

get'/' do
  erb :home
end