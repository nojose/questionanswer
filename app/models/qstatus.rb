class Qstatus < ActiveRecord::Base
  has_many :question
  attr_accessible :qtype
end
