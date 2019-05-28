class Scraper
  
  def self.scrape_westminster
    doc = Nokogiri::HTML(open("https://westminstermall.com/stores"))
    binding.pry
  end
  
end