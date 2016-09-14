class Film
  attr_accessor :id, :title, :synopsis, :price 

  def initialize(id, title, synopsis, price, active)
    @id, @title, @synopsis, @price, @active = id, title, synopsis, price, active
  end

  def get_info_without_format
    [:id, :title, :synopsis, :price]
  end 
 
  def get_info_with_format
    ["Title: #{:title}", "Synopsis: #{:synopsis}", "Price: #{:price}", "phone: #{:phone}"]
  end

  def is_active?
    @active    
  end
  
  def turn_inactive
    @active = false    
  end
  
end