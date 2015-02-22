require 'rails_helper'

describe "Sign in flow" do  
  before do 
    @user = create(:user)
  end

  describe "successful" do  
    it "redirects to the users list" do 
      visit root_path
      click_link 'Sign In'
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
      within 'form' do 
        click_button 'Sign in'
      end
      expect(current_path).to eq new_list_path
    end
  end
end
