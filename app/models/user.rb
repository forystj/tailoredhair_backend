class User < ApplicationRecord
  has_secure_password

  has_many :clientstatuses
  has_many :clients, through: :clientstatuses

  has_many :styliststatuses
  has_many :stylists, through: :styliststatuses

  has_many :usercomments
  has_many :comments, through: :usercomments
end
