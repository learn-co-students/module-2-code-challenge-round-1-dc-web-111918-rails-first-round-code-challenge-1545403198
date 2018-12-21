class Heroine < ApplicationRecord
  belongs_to :power
  validates :name, uniqueness:{message:"Name taken, please give a unique name!"}
end
