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




# class CashRegister
  
#   attr_accessor :with_discount, :total, :items, :last_transaction_amount
  
#   def initialize(with_discount=0)
#     @with_discount = with_discount
#     @total = 0
#     @items= []
#   end
  
#   def discount
#     self.with_discount
#   end  
  
#   # def instance(total)
#   #   @total=total
#   #   total=0
#   #end
  
#   def add_item(title, price, quantity=1)
#     #   # binding.pry
#     # @total +=price*quantity
#     #   quantity.times.do
#     #     items << title
#       self.total += price * quantity
#   end
  

#   def apply_discount
#       # binding.pry
#       if discount > 0 && total
#         self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
#       else
#         self.total
#   end
#     end
 
# end

# class CashRegister

#   attr_accessor :discount, :total

#   def initialize(discount=nil)
#     @discount = discount
#     @total = 0
#   end

#   def add_item(item, price, amount=1)
#     # binding.pry
#     self.total += price * amount
#   end

#   def apply_discount
#     # binding.pry
#     if discount > 0 && total
#       self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
#     else
#       self.total
#     end
#   end
  
# end  