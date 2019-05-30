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
  
  def self.scrape_store(input)
    #this is where we add description, store hours...
    #use nokogiri to open "https://westminstermall.com#{store.url}"
    
    store = Store.all[input-1]
      if store.hours == nil 
        doc = Nokogiri::HTML(open("https://westminstermall.com#{store.url}"))
        doc2 = Nokogiri::HTML(open("https://westminstermall.com/stores"))
        store.hours = doc.css("div.entry__body span")[0].text.strip
        store.phone_number = doc2.css("#postResults .post")[input-1].css("a ul.post__info").text.strip
        if input-1 < 3
          store.description = doc.css("div.entry__body p")[4].text.strip
        else
          store.description = doc.css("div.entry__desc p")[0].text.strip
        end
      end
     #puts " #{Store.all[input-1].name}\n   #{Store.all[input-1].description}\n   #{Store.all[input-1].hours}\n   #{Store.all[input-1].phone_number}"
  end
  
end