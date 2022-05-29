class Item < ApplicationRecord
  belongs_to :category, class_name: "Category", counter_cache: true
  belongs_to :owner, class_name: "User", counter_cache: true
  has_many :interactions, foreign_key: :item_id, dependent: :destroy

end
