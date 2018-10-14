require 'rails_helper'

RSpec.feature "user logs in" do
  scenario "using google oauth2" do
    stub_omniauth

    visit root_path

    expect(page).to have_link("Sign in with Google")
    
    click_link "Sign in with Google"

    expect(page).to have_content("Seth Schwartz")
    expect(page).to have_link("Logout")
  end

  scenario 'user can log out' do
    stub_omniauth

    visit root_path

    click_link "Sign in with Google"
    click_on "Logout"

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Sign in with Google")
    expect(page).to_not have_content("Seth Schwartz")
  end
end
