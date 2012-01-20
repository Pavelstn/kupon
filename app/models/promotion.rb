class Promotion < ActiveRecord::Base
  belongs_to :region
  belongs_to :category
  has_many :kupon
end
