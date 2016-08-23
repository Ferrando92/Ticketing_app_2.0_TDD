class HomeController < ApplicationController
  get '/' do
  		#default me muestra layout, con esto me muestra lo que le digo, why?
  	   erb :welcome_message, :layout => :welcome_message
  end
end