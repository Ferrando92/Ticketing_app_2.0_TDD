require File.dirname(__FILE__) + '/helper_spec'

describe 'Ticket creation' do

  before :each do
      @ticket = Ticket.new  "film_id", 'name', 'email', "phone"
  end

  it "Create a Ticket and get a Ticket object" do
    @ticket.should be_an_instace_of Ticket
  end

end