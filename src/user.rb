class User
  attr_reader :money

  def initialize(money:)
    @money = money
  end

  def choice(items)
    print "Please choose your Ramen > "
    num = gets.to_i
    items[num - 1]
  end
end