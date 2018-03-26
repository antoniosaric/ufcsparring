class Meeting < ApplicationRecord
  has_many :usermeetings
  has_many :users, through: :usermeetings
end
