class Interaction < ApplicationRecord
  belongs_to :item, class_name: "Item", counter_cache: true
  belongs_to :user, class_name: "User", counter_cache: true
 
end
