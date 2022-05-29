# == Schema Information
#
# Table name: categories
#
#  id          :bigint           not null, primary key
#  items_count :integer          default(0)
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Category < ApplicationRecord

  has_many :items, foreign_key: :category_id
  
end
