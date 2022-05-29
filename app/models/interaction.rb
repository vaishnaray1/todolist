class Interaction < ApplicationRecord


  #belongs_to(:item, { :required => true, :class_name => "Item", :foreign_key => "item_id", :counter_cache => true })
  #belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id", :counter_cache => true })

  #belongs_to :user, class_name: "User", counter_cache: true
  #belongs_to :item, counter_cache: true
end
