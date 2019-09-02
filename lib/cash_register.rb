class CashRegister
  attr_accessor :total, :discount, :items, :last
  def initialize(discount = 0)
    @total=0
    @discount=discount
    @items = []
    @last = []
  end
  
  def add_item(name, price, quantity = 1)
    @last = []
    @total += (price * quantity)
    num = 0
    while num < quantity
      @items << name
      num += 1
    end
    @last << price
    @last << quantity
  end
  
  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else  
      @total =(@total *((100.0-@discount)/100)).to_int
      return "After the discount, the total comes to $#{@total}."
    end
    
  end
  
  def void_last_transaction
    @total -= @last[0] * @last[1]
  end
end
