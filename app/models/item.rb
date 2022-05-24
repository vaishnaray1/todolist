class Item < ApplicationRecord
  belongs_to :owner
  belongs_to :category
end
