class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

   def add_item(title,price,quantity=0)
      if quantity > 0
        @price = (price*quantity)
        @total += @price
        quantity.times { @items << title }
      else
        @price = price
        @total += price
        @items << title
      end
  end

  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
end
end