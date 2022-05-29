# == Schema Information
#
# Table name: interactions
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  item_id    :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_interactions_on_item_id  (item_id)
#  index_interactions_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (item_id => items.id)
#  fk_rails_...  (user_id => users.id)
#
class Interaction < ApplicationRecord
  belongs_to :item, class_name: "Item", counter_cache: true
  belongs_to :user, class_name: "User"
 
end
