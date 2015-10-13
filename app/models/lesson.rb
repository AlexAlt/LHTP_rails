class Lesson < ActiveRecord::Base
  belongs_to :section
  validates :name, :presence => true
  validates :number, uniqueness: true
  default_scope {order('number')}


  def next
    if (self == self.section.lessons.last)
      self.section.lessons.first
    else
      return self.section.lessons.where("number > (?)", self.number).first
    end
  end
end
