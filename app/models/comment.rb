class Comment < ApplicationRecord
  has_many :usercomments
  has_many :users, through: :usercomments

  has_many :lookcomments
  has_many :looks, through: :lookcomments
end
