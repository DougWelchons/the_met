class Museum
  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits.push(exhibit)
  end

  def recommend_exhibits(patron)
    @exhibits.find_all do |exhibit|
      patron.interests.any?(exhibit.name)
    end
  end

  def admit(patron)
    @patrons.push(patron)
  end

  def list_of_intrested_patrons(exhibit)
    @patrons.find_all do |patron|
      patron.interests.any?(exhibit.name)
    end
  end


  def patrons_by_exhibit_interest
    patrons_by_exhibit = {}
    @exhibits.each do |exhibit|
      patrons_by_exhibit[exhibit] = list_of_intrested_patrons(exhibit)
    end
    patrons_by_exhibit
  end
end
