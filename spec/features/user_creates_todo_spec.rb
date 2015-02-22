require 'rails_helper'

describe "Creating To-Do List" do  
  include Warden::Test::Helpers
  Warden.test_mode!
  
  before do
    @user = create(:user)
  end
    
   describe "creating to do list" do
    it "shows new list" do
      login_as(@user, :scope => :user)
      visit new_list_path
      fill_in 'Title', with: 'Cool Stuff List'
      click_button 'Save'
      expect(current_path).to eq(list_path(@user.list))
    end
  end
end