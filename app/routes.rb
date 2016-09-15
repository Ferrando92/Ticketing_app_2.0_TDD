get "/" do
  haml :home
end

get "/test" do
  haml :home
end

get "/delete_session" do
  session.clear
  redirect "/new"
end

get "/new" do
  @films = session[:films]
  haml :form
end

post '/create' do
  ticket_id = generate_ticket_and_get_ticket_id(params[:name], params[:mail], params[:phone], params[:film_id])
  #ticket_id = session[:tickets].get_next_id-1
  redirect "/ticket/#{ticket_id}"
  #aqui crearemos el ticket y redigiremos a show/id para evitar creaciones multiples
end

get '/ticket/:id' do
  @ticket = get_data_without_format_from_ticket_by_ticket_id(params[:id].to_i)
  @film = get_data_without_format_from_film_by_film_id(@ticket.film_id)
  haml :show_ticket
end

get '/tickets' do
  @films = get_data_fromm_all_films_without_format
  @tickets = get_data_fromm_all_tickets_without_format
  haml :show_all_tickets
end