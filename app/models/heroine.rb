class Heroine < ApplicationRecord
  belongs_to :power

  validates :name, uniqueness: true

  def show_power(power)

  end
end
