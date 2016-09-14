class List 

  def initialize()
    @list = []
  end

  def add (film_id, name, email, phone)
    @list.push(Ticket.new(@list.size, film_id, name, email, phone))
  end

  def find_by_id(id)
    @list[id]    
  end
  
  
end