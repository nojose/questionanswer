class Bucket < ActiveRecord::Base
  has_many :question
  attr_accessible :phrase
end
