# config.ru
require 'sinatra/base'

# pull in the helpers and controllers
Dir.glob('./app/{helpers,controllers}/*.rb').each { |file| require file }

# map the controllers to routes
map('/index') { run HomeController }
map('/new') { run FormController }
map('/example') { run ExampleController }
map('/') { run ApplicationController }