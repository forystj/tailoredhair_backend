class Look < ApplicationRecord
  has_many :stylistlooks
  has_many :stylists, through: :stylistlooks

  has_many :lookcomments
  has_many :comments, through: :lookcomments
end
