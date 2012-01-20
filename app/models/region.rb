class Region < ActiveRecord::Base
  has_many :promotion
  has_many :user
  has_many :category
end
