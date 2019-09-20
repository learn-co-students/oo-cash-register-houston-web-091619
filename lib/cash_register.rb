class CashRegister

    attr_accessor :total, :discount, :item, :last_item_cost

    def initialize(discount=0)
        @total = 0          #sets an instance variable @total equ. to 0
        @discount = discount
        @item = []
    end

    def add_item(item, cost_of_item, quantity=1)
        @total = self.total + cost_of_item * quantity
        quantity.times do 
            self.item << item
        end
        @last_item_cost = cost_of_item * quantity

    end

    def apply_discount
        
        if discount != 0
            self.total = (total * ((100.0 - @discount.to_f)/100)).to_i
            "After the discount, the total comes to $#{@total}."
        
        else
            "There is no discount to apply."
        end
    end

    def items
        item
    end

    def void_last_transaction
        @total = total - last_item_cost
    end


end
