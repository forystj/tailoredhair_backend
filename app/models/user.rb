class User < ApplicationRecord
  has_secure_password
  has_many :userposts
  has_many :posts, through: :userposts

  has_many :userlooks
  has_many :looks, through: :userlooks

  has_many :usercomments
  has_many :comments, through: :usercomments
end
