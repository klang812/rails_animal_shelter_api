class Dog < ApplicationRecord
  belongs_to :animal

  validates :name, :breed, {
    presence: true
  }

end