class Section < ActiveRecord::Base
  has_many :lesson
  validates :name, :presence => true

end
