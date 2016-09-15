require 'sinatra'
#require './ticket'
#require './film'
#require './list'
#require './routes'
require 'haml'
#require 'rubygems'
#require 'bundler/setup'
require 'pony'
require 'sinatra'
require 'sinatra/activerecord'
require 'zlib'
#require_relative './../config/environments'
require_relative 'routes'
configure :development do
  set :database, {
      adapter: 'mysql2',
      #encoding: 'unicode',
      database: 'ticketsdb',
      pool: 2,
      username: 'test',
      password: 'pass'
    }
end

before do
  
end

get '/' do
    "Hello, World!"
end