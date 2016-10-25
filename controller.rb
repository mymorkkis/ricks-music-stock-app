require 'sinatra'
require 'sinatra/contrib/all'
require_relative 'controllers/album_controller'
require_relative 'controllers/artist_controller'
require_relative 'controllers/stock_controller'

get '/' do
  erb(:home)
end