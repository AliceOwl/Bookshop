class Book < ApplicationRecord
   # has_many :order_items
    has_many :line_items

    before_destroy :ensure_not_referenced_by_any_line_item

    private
    #Ensure that there are no line items referencing the product
    def ensure_not_referenced_by_any_line_item
        unless line_items.empty?
            errors.add(:base, 'Line Items present')
        throw :abort
        end
    end
end
