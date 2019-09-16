class CashRegister 
  
  attr_accessor :discount, :total, :items, :price, :qty
  
  def initialize(discount = 0) 
    @total = 0 
    @items = []
    @discount = discount
  end 
  
  def total 
    @total
  end 
  
  def add_item(title, price, qty = 1)
    @price = price
    @qty = qty
    @total += price*qty
    if qty >1 
      counter = 0 
      while counter < qty
        @items << title 
        counter += 1 
      end 
    else 
      @items << title
    end 
    
    
  end 
  
  def apply_discount 
    if @discount > 0 
      @to_take_off = (price*discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else 
      return "There is no discount to apply."
    end 
  end 
  
  def items 
    @items 
  end 
  
  def void_last_transaction 
    @total -= @price*@qty
  end 
  
end 