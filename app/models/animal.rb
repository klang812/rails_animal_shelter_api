class Animal < ApplicationRecord
  has_many :cats, dependent: :destroy
  has_many :dogs, dependent: :destroy
  

end