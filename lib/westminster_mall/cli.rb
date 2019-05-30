class CLI
  
  def call
    Scraper.scrape_stores
    list_stores
    directory
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
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i < 121
        Scraper.scrape_store(input.to_i)
        puts " #{Store.all[input.to_i-1].name}\n   #{Store.all[input.to_i-1].description}\n   #{Store.all[input.to_i-1].hours}\n   #{Store.all[input.to_i-1].phone_number}"
      elsif input.to_i > 120 
        puts "Invalad input. Please enter the number of the store you would like to learn more about or type exit:"
      else 
        goodbye
      end
    end
  end
  
  def goodbye
    puts "See you next time!"
  end
  
end
