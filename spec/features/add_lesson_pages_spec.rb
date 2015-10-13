require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_link 'New Lesson'
    fill_in 'Name', :with => 'Ember.js'
    click_on 'Create Lesson'
    expect(page).to have_content 'Lessons'
  end
end
