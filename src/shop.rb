class Shop
  attr_reader :items

  def initialize(name:, items:)
    @name = name
    @items = items
  end

  def display
    puts "Welcome to #{@name}!".green
    puts "Here is our menu."
    puts "*" * 30
    @items.each.with_index(1) do |item, index|
      puts "#{index.to_s.rjust(2)}. #{item.name.ljust(16)}: $#{item.price}".yellow
    end
    puts "*" * 30
  end

  def sell(user, item)
    puts "You have chosen #{item.name}. It's $#{item.price} in total."
    puts "You have paid $#{user.money}."
    puts "Here is your change $#{user.money - item.price}."
    puts "Enjoy your #{item.name}!"
  end
end