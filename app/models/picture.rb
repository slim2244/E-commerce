class Picture < ApplicationRecord

  has_one_attached :pic
  has_many :offers, dependent: :destroy
  has_many :users, through: :offers
  belongs_to :administrator, class_name: "User"

  validates :name, presence: true
  validates :name, presence: true
  validates :description, presence: true, length: {in: 20..1000}
  validates :price, presence: true, numericality: {greater_than: 0}

end
