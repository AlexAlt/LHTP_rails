require 'rails_helper'

describe 'the edit a lesson process' do
  it 'edits a task' do
    lesson = Lesson.create(:name => 'HTML', :description => 'Great')
    visit lesson_path(lesson)
    click_on 'Edit'
    fill_in 'Description', :with => 'OK'
    click_on 'Update Lesson'
    expect(page).to have_content 'OK'
  end
end
