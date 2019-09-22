class CashRegister
  
  attr_accessor :total, :items, :discount, :previous_total
  
  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, qty = 1)
    @previous_total = @total
    qty.times do
      @items << item
    end
    self.add_to_price(price, qty)
  end
  
  def add_to_price(price, qty = 1)
    @total += (price * qty)
  end
  
  def void_last_transaction
    @total = @previous_total
  end
  
  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * @discount)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  
end




