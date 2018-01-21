class Post < ApplicationRecord
  has_many :stylistposts
  has_many :stylists, through: :stylistposts
end
