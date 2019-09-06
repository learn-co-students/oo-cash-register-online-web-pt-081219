require 'pry'

class CashRegister 
  
  attr_accessor :emp_discount, :total, :cart, :last

  
  def initialize(emp_discount=0)
    @cart = []
    #@last = Hash.new
    @place = 0
    @total = 0
    @emp_discount = emp_discount
  end
  
  def discount 
    @emp_discount 
  end
  
  def add_item(item, price, quantity=1) 
    @total += (price * quantity) 
    @last = (price * quantity)
    count = quantity 
      while count > 0 
        @cart << item  
    #    @place += 1
        count -= 1 
    #    @last = {@place => price}
      end 
  end
  
  def apply_discount
  #  binding.pry
    if @emp_discount == 0 
      "There is no discount to apply."
    else
      @total -= ((@total * @emp_discount) / 100)
      "After the discount, the total comes to $#{@total}."
    end
  end
    
  def items 
    @cart 
  end
      
  def void_last_transaction 
    #binding.pry
    @total -= @last
    #@cart.pop
  #  @place -= 1
  #  binding.pry
  end
   
  
end
