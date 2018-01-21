class Stylist < ApplicationRecord
  has_many :styliststatuses
  has_many :users, through: :styliststatuses
end
