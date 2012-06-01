class Language < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :recruits
  validates :name, presence: true, length: { maximum: 50 }, 
  			uniqueness: true
end
