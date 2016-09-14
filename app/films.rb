class Films < List
  attr_accessor :list  
  def add(name, sinopsis = nil)
    @list.push(Film.new(get_new_id , name, sinopsis, 7, true))   
  end

  def add_as_classic(name, sinopsis = nil)
    @list.push(Film.new(get_new_id, name, sinopsis, 3.5, true))
  end
  
  def get_new_id
    @list.size
  end

  def set_as_film_of_the_week(id)
    find_by_id(id).price = 4
  end

  def unset_as_film_of_the_week(id)
    find_by_id(id).price = 7
  end

  def set_inactive_film_by_id(id)
    find_by_id(id).turn_inactive    
  end

end