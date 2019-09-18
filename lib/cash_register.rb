require 'pry'

class CashRegister
  attr_accessor :total, :discount
  attr_reader :items, :item_prices
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @item_prices = []
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    quantity.times {self.items << title}
    quantity.times {self.item_prices << price}
  end
  
  def apply_discount
    if self.discount != 0
      self.total = self.total * (1 - (self.discount / 100.0))
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    
    #Update total. Remove last el on @items and @item_prices
    #If last transaction was for the same item type, then reset vars
    if self.items.uniq[0] == self.items.last
      self.total = 0
      #self.items = []
      #self.item_prices = []
    else
      self.total = self.total - @item_prices.last
      self.items.pop
      self.item_prices.pop
    end
  end
end
