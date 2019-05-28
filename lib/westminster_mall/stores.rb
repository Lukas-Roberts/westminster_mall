class WestminsterMall::Stores
  attr_accessor :name, :description, :hours, :phone_number
  
  def self.all 
    
  end
  
  def self.scrape_stores
    stores = []
    
    stores
  end
  
  def self.scrape_westminster
    doc = Nokogiri::HTML(open("https://westminstermall.com/stores"))
  end
  
end