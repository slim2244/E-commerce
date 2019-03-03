class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many :offers, dependent: :destroy
  has_many :pictures, through: :offers
  has_many :administrated_pictures, class_name: "Picture", foreign_key: "administrator_id", dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :description, presence: true

end
