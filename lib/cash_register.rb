require 'pry'

class CashRegister 
    attr_accessor :total, :discount, :price, :items, :last

def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last = []
end

def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    amount = quantity 
    while amount > 0 
        @items << title 
        amount -= 1 
    end
    @last = [] 
    @last << price 
    @last << quantity 
end 

def apply_discount
    if discount > 0 
@total = @total - ( (@total * @discount) / 100 ) 
"After the discount, the total comes to $#{@total}."
else 
    "There is no discount to apply."
end 
end 

def items 
  @items
end 

def void_last_transaction 
    @total -= @last[-1] * @last[-2]
end 
end