class Network
  attr_reader :name

  def initialize(name)
    @name = name
    @hospitals = []
  end
end
