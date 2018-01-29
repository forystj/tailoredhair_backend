class Look < ApplicationRecord
  has_many :userlooks
  has_many :users, through: :userlooks

  has_many :lookcomments
  has_many :comments, through: :lookcomments
end
