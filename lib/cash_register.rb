
class CashRegister

    attr_accessor :total, :discount, :all_items

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @all_items = []
    end

    def add_item(title, price, count=1)
        count.times { @all_items << title }
        @total += price * count
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
            @total = @total - (@total * @discount / 100)
            return "After the discount, the total comes to $#{@total}."
        end
    end

    def items 
        @all_items
    end

    def void_last_transaction
        
    end

end
