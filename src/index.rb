require "pry"
require "colorize"
require_relative "item"
require_relative "shop"
require_relative "user"

SHOP_NAME = "Sydney Ramen Shop"
MONEY = 100

items = Item.import(path: "items.csv")
shop = Shop.new(name: SHOP_NAME, items: items)
user = User.new(money: MONEY)

shop.display
item = user.choice(shop.items)
shop.sell(user, item)
