class Language < ActiveRecord::Base
  attr_accessible :name
  has_many :knowledge
  has_many :recruits, through: :knowledge
  validates :name, presence: true, length: { maximum: 50 }, 
  			uniqueness: true
end
