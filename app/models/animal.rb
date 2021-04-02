class Animal < ApplicationRecord
  has_one :dogs, dependent: :destroy
  has_many :cats, dependent: :destroy

  validates :animal_type, presence: true
end
