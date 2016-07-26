class Message < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 40 }
  validates :email, presence: true, length: { maximum: 80 }, uniqueness: true
  has_many :phones
end