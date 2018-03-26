
class UserMeetings < ApplicationRecord

  belongs_to :user
  belongs_to :meetings

end