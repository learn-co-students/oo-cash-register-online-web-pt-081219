class CashRegister
  attr_accessor :total, :discount, :items, :last_price, :last_quantity
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def add_item(item, price, quantity = 1)
    @last_price = price
    @last_quantity = quantity
    
    quantity.times do 
      @items.push(item)
      
      @total += price
    end
  end
  
  def apply_discount
    prev = @total 
    
    @total *= ((100.0 - @discount) / 100)
    
    if @total == prev
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.to_i}."
    end 
  end 
  
  def void_last_transaction
    @last_quantity.times do 
      @items.pop
      
      @total -= @last_price
    end
  end 
end 