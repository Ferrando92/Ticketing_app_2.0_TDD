require 'sinatra'
#require './ticket'
#require './film'
#require './list'
#require './routes'
#require 'haml'
#require 'rubygems'
#require 'bundler/setup'
#require 'pony'

configure do
  enable :sessions
end

before do
  #if(!session[:films]) then session[:films] = List.new() end# type 1 = films
  if(!session[:tickets]) then session[:tickets] = List.new() end# type 2 = tickets
  #Descomentar si se aplica herencia en Films
  if(!session[:films]) then session[:films] = Films.new end
end