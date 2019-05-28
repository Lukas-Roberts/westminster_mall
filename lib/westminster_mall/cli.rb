class WestminsterMall::CLI
  
  def call
    list_stores
    directory
    goodbye
  end
  
  def list_stores
    puts "The stores of Westminster Mall:"
  end
  
  def directory
    puts "Enter the number of the store you would like to learn more about or type exit:"
  end
  
  def goodbye
    puts "See you next time!"
  end
  
end
