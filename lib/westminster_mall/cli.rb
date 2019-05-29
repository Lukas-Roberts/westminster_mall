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
    @stores.each.with_index(1) do |store, i|
      puts "#{i}. #{store.name}"
    end
  end
  
  def directory
    input = nil
    while input != "exit"
      puts "Enter the number of the store you would like to learn more about or type exit:"
      input = gets.to_i
      Scraper.scrape_store(input)
      #puts " #{Store.all[input-1].name}\n   #{Store.all[input-1].description}\n   #{Store.all[input-1].hours}\n   #{Store.all[input-1].phone_number}"
    end
    
  end
  
  def goodbye
    puts "See you next time!"
  end
  
end
