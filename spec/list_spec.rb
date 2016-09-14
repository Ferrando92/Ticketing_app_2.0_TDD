require File.dirname(__FILE__) + '/helper_spec'

describe 'Tickets list' do

  before :each do
      @tickets = List.new()
  end

  it "Create a List of tickets and get a List object" do
    expect(@tickets).instance_of? List
  end 

  it "Add a ticket to the list and find it by id" do
    @ticket = Ticket.new(0, "film_id", 'name', 'email', "phone")
    @tickets.add("film_id", 'name', 'email', "phone")
    expect(@tickets.find_by_id(0)).equal? :ticket
  end

end

describe 'Films list' do

  before :each do
      @films = Films.new()
      @films.add("Suicide Squad")#0
      @films.add("Pets")#1
      @films.add("Cafe Society")#2
      @films.add_as_classic("300", "Tu colega Zack sin poder hacer explotar cosas")
      @films.add("Spotlight")#4
      @films.set_as_film_of_the_week(4)
  end

  it "Create a List of films and get a List object" do
    expect(@films).instance_of? List
  end 

  it "Add a film to the list and find it by id" do
    @film = Film.new(5, 'title', 'synopsis', 0, true)
    @films.add('title', 'synopsis')
    expect(@films.find_by_id(0)).equal? :film
  end

  it 'Disable a film from list' do
    @films.set_inactive_film_by_id(2)
  end

  it 'Film of the week must cost 4€ and set as a normal with 7€ price' do
    expect(@films.find_by_id(4).price).equal? 4
    @films.unset_as_film_of_the_week(4)
    expect(@films.find_by_id(4).price).equal? 7
  end

  it 'Classical Film must cost 3.5€ ' do
      expect(@films.find_by_id(3).price).equal? 3.5
  end
end