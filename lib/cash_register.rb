require "pry"
class CashRegister
  attr_accessor :total, :discount, :cart, :last, :last_qtd
  
  def initialize(discount = nil)
    @cart = []
    @total = 0 
    @discount = discount
    @last = 0
  end
  
  def add_item(item, price, quantity = 1)
    counter = quantity
    while counter != 0 
      @cart << item
      @total += price
      counter -= 1
    end
    @cart
    @total
    @last = price
    @last_qtd = quantity
  end
  
  def apply_discount
    discount = @discount.to_f * 0.01
    total = @total.to_f
    if @discount
      new = total - (total * discount)
      @total = new.to_i
      p "After the discount, the total comes to $#{@total}."
    else 
      p "There is no discount to apply."
    end
  end
  
  def items
    @cart
  end
  
  def void_last_transaction
      void = @total
      @total = void - (@last * @last_qtd)
  end
  
end
