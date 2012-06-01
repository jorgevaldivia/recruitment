class Recruit < ActiveRecord::Base
  attr_accessible :cellphone, :email, :name, :rails, :residence
  has_and_belongs_to_many :languages
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
  	uniqueness: true
end
