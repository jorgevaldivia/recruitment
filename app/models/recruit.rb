class Recruit < ActiveRecord::Base
  attr_accessible :cellphone, :email, :name, :rails, :residence, :language_ids, :contacted, :promising, :rejected, :comments
  has_many :knowledge
  has_many :languages, through: :knowledge
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
  	uniqueness: true
end
