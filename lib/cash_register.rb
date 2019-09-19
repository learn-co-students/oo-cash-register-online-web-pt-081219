require 'pry-byebug'

class CashRegister
  attr_accessor :total, :discount, :cart

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(title, price, quantity = 1)
    @price, @quantity = price, quantity
    @total += (@price * quantity)
    @quantity.times do
      @cart << title
    end
  end

  def apply_discount
    if @discount.positive?
      discounted_total = @total - (@total * (@discount / 100.0))
      discounted_total = discounted_total.floor
      @total = discounted_total
      "After the discount, the total comes to $#{discounted_total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= (@price * @quantity)
  end
end
