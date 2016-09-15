# routes.rb
current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }

get '/tickets' do
  
  @ticketstickets = Ticket.all
  
end


get '/tickets/:id' do
  
  @tickets = Ticket.find(params[:id])
  
end

post '/ticket' do
  
  @tickets = Ticket.create(params[:ticket])
  
end

put '/tickets/:id/publish' do
  
  @tickets = Ticket.find(params[:id])
  @tickets.publish!
  
end

delete '/tickets/:id' do
  
  Article.destroy(params[:id])
  
end