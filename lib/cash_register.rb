class CashRegister
  attr_accessor :total, :discount, :array, :last_item_price
 

  def initialize(employe_discount = nil)
    @total = 0 
    @discount = employe_discount
     @array = [] 
     @last_item_price = []
   
  end 
  
  def add_item(title, price, quantity = nil)
   
    if quantity == nil 
        @array << title
        @last_item_price << price
      @total += price 
     
    else
      quantity.times{ @array << title}
      @total += price * quantity 
    end
  end 
  
  def apply_discount 
    if @discount != nil
      
       @total = @total - ( (@total * @discount) / 100 ) 
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end

  end
  
  def items 
   @array
  end 
  
  def void_last_transaction  
    if @last_item_price[-1] == nil 
       @total = 0.0
    else 
      @total -= @last_item_price[-1] 
       @last_item_price.pop
    end

  end
  
end
