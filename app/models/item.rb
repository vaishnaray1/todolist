# == Schema Information
#
# Table name: items
#
#  id                 :bigint           not null, primary key
#  completed          :boolean          default(FALSE)
#  description        :text
#  due_date           :datetime
#  interactions_count :integer          default(0)
#  priority           :string           default("Normal")
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  category_id        :bigint           not null
#  owner_id           :bigint           not null
#
# Indexes
#
#  index_items_on_category_id  (category_id)
#  index_items_on_owner_id     (owner_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (owner_id => users.id)
#
class Item < ApplicationRecord
  belongs_to :category, class_name: "Category", counter_cache: true
  belongs_to :owner, class_name: "User", counter_cache: true
  has_many :interactions, foreign_key: :item_id, dependent: :destroy

end
