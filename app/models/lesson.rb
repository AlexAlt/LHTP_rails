class Lesson < ActiveRecord::Base
  belongs_to :section
  validates :name, :presence => true
  validates :number, uniqueness: true
  default_scope {order('number')}


  def next
    if (self == Lesson.last)
      Lesson.first
    else
      next_lesson = Lesson.where("number > (?)", self.number).first
    end
  end
end
