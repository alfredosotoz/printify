class Printer < ApplicationRecord
  has_many :works, dependent: :destroy
end
