class Family < ApplicationRecord
  belongs_to :user
  has_many :childrens
  has_many :missions
  has_many :rewards
end
