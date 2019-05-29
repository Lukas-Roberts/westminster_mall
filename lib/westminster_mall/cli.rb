class CLI
  
  def call
    Scraper.scrape_stores
    list_stores
    directory
    goodbye
  end
  
  def list_stores
    puts "The stores of Westminster Mall:"
    @stores = Store.all 
    @stores.each.with.index(1) do |store, i|
      puts "#{i}. #{store.name} - #{store.phone_number}"
    end
  end
  
  def directory
    puts "Enter the number of the store you would like to learn more about or type exit:"
  end
  
  def goodbye
    puts "See you next time!"
  end
  
end
