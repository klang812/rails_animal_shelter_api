class Animal < ApplicationRecord
  has_many :dogs, dependent: :destroy
  has_many :cats, dependent: :destroy

  validates :type, presence: true
end
