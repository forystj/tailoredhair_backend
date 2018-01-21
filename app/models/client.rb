class Client < ApplicationRecord
  has_many :clientstatuses
  has_many :users, through: :clientstatuses
end
