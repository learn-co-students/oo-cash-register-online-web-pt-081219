class CashRegister
attr_reader :discount
attr_accessor :total, :last_item, :last_quantity


def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
    @items = []
end

def add_item(name, price, quantity = 1)
    @total += (price * quantity)
    quantity.times {@items << name}
    @last_item = price
    @last_quantity = quantity
end

def apply_discount
    if @discount > 0
        @total = (@total * (1-(@discount/100))).to_i
        return "After the discount, the total comes to $#{@total}."
    else
        return "There is no discount to apply."
    end
end

def items
    @items
end

def void_last_transaction
    @last_quantity.times {@items.pop}
    @total -= @last_item
    if @items.length == 0
        @total = 0.0
    end
    @total
end

end
