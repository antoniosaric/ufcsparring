class User < ApplicationRecord
  has_many :usermeetings
  has_many :meetings, through: :usermeetings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/ufcdefault.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
end
