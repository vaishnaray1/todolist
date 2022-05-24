class Item < ApplicationRecord
  belongs_to :owner
  belongs_to :category
  has_many(:interactions, { :class_name => "Interaction", :foreign_key => "item_id", :dependent => :destroy })
  belongs_to(:category, { :required => true, :class_name => "Category", :foreign_key => "category_id", :counter_cache => true })
  belongs_to(:author, { :required => true, :class_name => "User", :foreign_key => "owner_id" })
end
