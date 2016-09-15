require File.dirname(__FILE__) + '/helper_spec'

describe 'APP TEST' do

  before :each do
    configure do
    enable :sessions
  end

  before do
    #if(!session[:films]) then session[:films] = List.new() end# type 1 = films
    if(!session[:tickets]) then session[:tickets] = List.new() end# type 2 = tickets
    #Descomentar si se aplica herencia en Films
    if(!session[:films]) then session[:films] = Films.new end
  end
  @ticket = Ticket.new(0, 4, "test", "sferrando.92@gmail.com", '111111111')
  session[:films].add("Suicide Squad")#0
  session[:films].add("Pets")#1
  session[:films].add("Cafe Society")#2
  session[:films].add_as_classic("300", "Tu colega Zack sin poder hacer explotar cosas")
  session[:films].add("Spotlight")#4
  session[:films].set_as_film_of_the_week(4)
end

  after :each do
    session.clear
  end

  describe 'TICKET CREATION' do
    it "get params and create add to session list of tickets" do
      ticket_id = generate_ticket_and_get_ticket_id(4, "test", "sferrando.92@gmail.com", '111111111')
      expect(get_data_without_format_from_ticket_by_ticket_id(ticket_id)).equals(@ticket)
    end
  end
  
  describe 'SESSIONS TEST' do
    it 'SESSION TICKETS TEST' do
      session[:tickets].add(4, "test", "sferrando.92@gmail.com", '111111111')#0
      session[:tickets].add(4, "test2", "sferrando.92@gmail.com", '111111111')#0
      @tickets = List.new
      @tickets.add(4, "test", "sferrando.92@gmail.com", '111111111')#0
      @tickets.add(4, "test1", "sferrando.92@gmail.com", '111111111')#1
      expect(get_data_fromm_all_tickets_without_format).equal?(@tickets.list)
    end
  
    it 'SESSION FILMS TEST' do
      @films = Films.new
      @films.add("Suicide Squad")#0
      @films.add("Pets")#1
      @films.add("Cafe Society")#2
      @films.add_as_classic("300", "Tu colega Zack sin poder hacer explotar cosas")
      @films.add("Spotlight")#4
      @films.set_as_film_of_the_week(4)
      expect(get_data_fromm_all_films_without_format).equal?(@films.list)
    end
  end
  
  describe 'SHOW ALL TICKETS INFORMATION' do
    it "GET ALL THE DATA FROM TICKETS" do
      generate_ticket_and_get_ticket_id(4, "test", "sferrando.92@gmail.com", '111111111')
      generate_ticket_and_get_ticket_id(4, "test2", "sferrando.92@gmail.com", '111111111')
      generate_ticket_and_get_ticket_id(4, "test3", "sferrando.92@gmail.com", '111111111')
      expect(get_data_fromm_all_tickets_without_format).equal?(@tickets)
    end
  end
end