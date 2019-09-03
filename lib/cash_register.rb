class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    self.discount
    @last_transaction = nil
    @items = []
  end 
  
  def add_item(title, price, quantity=0)
    if quantity > 1
      @items.concat title.split*quantity
      @last_transaction = price*quantity 
      @total += price*quantity
    else 
      @items << title
      @last_transaction = price 
      @total += price
    end
  end 
  
  def apply_discount
    if @discount > 0   
      new_total = @total -= (@total * @discount*0.01)
      "After the discount, the total comes to $#{new_total.to_i}."
    else 
      "There is no discount to apply."
    end 
  end 
  
  def void_last_transaction
    @total -= @last_transaction
  end 
  
end 