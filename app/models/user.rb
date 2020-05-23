class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books, dependent: :destroy
  # has_many :profile_image_id_to_users, dependent: :destroy
  attachment :profile_image
  validates :name, presence: true, length: { in: 2..20 }
  validates :introduction, length: { maximum: 50 }
end
