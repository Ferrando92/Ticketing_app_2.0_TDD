require File.dirname(__FILE__) + '/helper_spec'

describe 'Ticket creation' do

  before :each do
      @ticket = Ticket.new(1, "film_id", 'name', 'email', "phone")
  end

  it "Create a Ticket and get a Ticket object" do
    expect(@ticket).instance_of? Ticket
  end

  it "Create a Ticket and get all the info" do
    expect(@ticket.id).equal?(1)
    expect(@ticket.name).equal?("name")
    expect(@ticket.email).equal?("email")
    expect(@ticket.phone).equal?("phone")
    expect(@ticket.film_id).equal?("film_id")
  end

  it "Give an id and get an array with the info with format" do
    expect(@ticket.get_info_with_format).equal? ["Ticket id: #1", "film_id: film_id", 'name: name', 'email: email', "phone: phone"]
  end

  it "Give an id and get an array with the info" do
    expect(@ticket.get_info_without_format).equal? [1, "film_id", 'name', 'email', "phone"]
  end
end