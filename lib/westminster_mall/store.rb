class Store
  attr_accessor :name, :description, :hours, :phone_number, :url
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  
  
  
end