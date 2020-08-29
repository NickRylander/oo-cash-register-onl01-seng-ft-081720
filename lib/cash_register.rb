
# CashRegister
# ::new
#   sets an instance variable @total on initialization to zero (FAILED - 1)
#   optionally takes an employee discount on initialization (FAILED - 2)
# #total
#   returns the current total (FAILED - 3)
# #add_item
#   accepts a title and a price and increases the total (FAILED - 4)
#   also accepts an optional quantity (FAILED - 5)
#   doesn't forget about the previous total (FAILED - 6)
# #apply_discount
#   the cash register was initialized with an employee discount
#     applies the discount to the total price (FAILED - 7)
#     returns success message with updated total (FAILED - 8)
#     reduces the total (FAILED - 9)
#   the cash register was not initialized with an employee discount
#     returns a string error message that there is no discount to apply (FAILED - 10)
# #items
#   returns an array containing all items that have been added (FAILED - 11)
# #void_last_transaction
#   subtracts the last item from the total (FAILED - 12)
#   returns the total to 0.0 if all items have been removed (FAILED - 13)

class CashRegister

    attr_accessor :total, :discount, :items, :last_item

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end
    def add_item(title, price, quantity = 1)
        @total += price * quantity
        counter = 0
        while counter < quantity
            @items << title
            counter += 1
        end
        @last_item = price * quantity
    end
    def apply_discount
        if discount != 0
        self.total = (total * ((100.0 - discount.to_f)/100)).to_i
        "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end        
    end
    def items
        @items
    end
    def void_last_transaction
        self.total -= @last_item
    end
end