class Order < ActiveRecord::Base
    
    has_many :line_items
    belongs_to :user
    
    # we want to work with order items as if it is a hash, yet it is stored in the database not as one
    serialize :order_items, Hash
    
end
