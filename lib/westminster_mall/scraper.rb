class Scraper
  
  def self.scrape_stores
    doc = Nokogiri::HTML(open("https://westminstermall.com/stores"))
  
    #get all the stores and for each store make a store object with a name and url 
    
    doc.css("#postResults .post").each do |node|
      store = Store.new
      store.url = node.css("a").first.attr("href")
      store.name = node.css("a div.post__body h2").text.strip
    end
    #binding.pry
  end
  
  def self.scrape_store
    #this is where we add description, store hours...
    #use nokogiri to open "https://westminstermall.com#{store.url}"
    input = 1 
    store = Store.all[input - 1]
    doc = Nokogiri::HTML(open("https://westminstermall.com#{store.url}"))
    binding.pry
      while input != "exit"
      puts "Enter the number of the store you would like to learn more about or type exit:"
      input = gets.strip.downcase
    end
  end
  
end