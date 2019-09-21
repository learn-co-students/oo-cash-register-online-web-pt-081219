class CashRegister
  
 attr_accessor :total, :discount, :last_transaction_amount, :items
  
  def initialize(discount = 20)
    @total = 0
    @discount = discount
    @items = []
end

    def add_item(title,price,quantity = 1)
    if quantity>1
      i=0
      while i<quantity
        @items << title
        i+=1
      end
    else
      @items << title
    end
    @total += price*quantity
    @last_transaction_amount = @total
    @total
  end
  

  def apply_discount() # empty cause we dont know what the discount is
    if @discount > 0
    @discount = @discount/100.to_f
    # changes to a float because 50% = .50 or .5.... ex: $10 and it's 50% off...10 *.5 = $5. $10-$5 = $5
      @total = @total - (@total * (@discount))
      #Its calculating the percentage and subtracting it from the total
      "After the discount, the total comes to $#{@total.to_i}."
      #gotta change total float back to integer
     else
      "There is no discount to apply."
    end
  end
   
# Syntax: number.to_f

# Parameter: The function takes the integer which is to be converted to float.

# Return Value: The function returns the float value of the number. 

#floats are 9.0, 34.9, -89.0 etc.
    
#to_i is a method which help us to convert value from different data like string, float into integer. This is also called typecasting of values.    [my_str= "58" ] => my_str.to_i => 58  [my_str= "69 b"] => my_str.to_i => 69


end






  
  
  
  
  
  
 