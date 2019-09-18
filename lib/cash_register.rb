class CashRegister

    attr_accessor :total, :discount, :items

    def initialize(discount=nil)
        @discount = discount 
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity=1)
        quantity.times do 
            @items << title
        end
        @last_item = price * quantity
        @total += price * quantity
    end

    def apply_discount
        if @discount
            @total *= (100.0-@discount) / 100.0
            "After the discount, the total comes to $#{@total.round(2)}"
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_item
    end

end

