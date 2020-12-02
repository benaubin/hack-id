class Member < ApplicationRecord
  has_many :sessions

  validates :email, uniqueness: true
end
