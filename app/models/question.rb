class Question < ActiveRecord::Base
  belongs_to :bucket
  belongs_to :qstatus
  attr_accessible :bucket_id, :qstatus_id, :qtext

  validates :qtext, uniqueness: true
  validates_presence_of :qtext
end
