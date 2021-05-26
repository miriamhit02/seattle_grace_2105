class Network
  attr_reader :name

  def initialize(name)
    @name = name
    @hospitals = []
    @hospital = hospital
  end

  def add_hospital
    @hospitals << hospital 
  end
end
