require "pry"
class CashRegister 
attr_accessor :total, :items, :with_discount, :last_transaction_amount
def initialize(with_discount = 0)
@total = 0
@with_discount = with_discount
@items = []
end 
def discount
    self.with_discount
end
def add_item(title,price,quantity = 1)
  @total += price*quantity
    quantity.times do
      items << title
  end
 @last_transaction_amount = price*quantity
end
def  apply_discount()
  if @with_discount > 0
      @discount =  (@total * @with_discount)/100
      @total -= @discount
      
    "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
end
def items 
  @items
end
  # @total -= @last_transaction_amount
def void_last_transaction
 # binding.pry
 @total -= @last_transaction_amount
  #self.total -= self.last_transaction_amount
end
end


