class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #has_many(:items, { :class_name => "Item", :foreign_key => "owner_id", :dependent => :destroy })
  #has_many(:interactions, { :class_name => "Interaction", :foreign_key => "user_id", :dependent => :destroy })

  #has_many(:tasks, { :through => :interactions, :source => :item })
  has_many :items, class_name: "Item", foreign_key: :owner_id, dependent: :destroy

end
