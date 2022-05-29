class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items, foreign_key: :owner_id, dependent: :destroy
  has_many :interactions, foreign_key: :user_id, dependent: :destroy
  has_many :tasks, through: :interactions, source: :item



end
