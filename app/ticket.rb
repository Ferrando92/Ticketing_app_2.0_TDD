class Ticket
  attr_reader :id, :film_id, :name, :email, :phone
  
  def initialize id, film_id, name, email, phone
    @id, @film_id, @name, @email, @phone = id, film_id, name, email, phone
  end

  def get_info_without_format
    [:id, :film_id, :name,:email, :phone]
  end 
 
  def get_info_with_format
    ["Ticket id: #{:id}", "film_id: #{:film_id}", "name: #{:name}", "email: #{:email}", "phone: #{:phone}"]
  end

end