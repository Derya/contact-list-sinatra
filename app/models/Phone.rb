class Phone < ActiveRecord::Base
  validates :label, presence: true, length: { maximum: 60 }
  validates :number, presence: true, length: { maximum: 60 }
  belongs_to :contact
end