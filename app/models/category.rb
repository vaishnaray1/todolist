class Category < ApplicationRecord
  has_many(:items, { :class_name => "Item", :foreign_key => "category_id" })
end
