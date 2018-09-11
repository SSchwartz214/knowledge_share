require 'rails_helper'

describe 'user adds book to their dashboard page' do
  scenario 'they click Read' do
    stub_omniauth
    # allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit search_path

    fill_in :q, with: "1984"
    click_on "Search"

    click_on "Read"

    expect(current_path).to eq(user_path(user))
  end
end
