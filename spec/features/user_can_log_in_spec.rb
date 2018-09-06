require 'rails_helper'

describe 'a user' do
  context 'visits the welcome page' do
    it 'can log in' do
      #A user visits '/'
      visit '/'
      #clicks log in
      #is taken to google OAuth page
      #logs in with google account
      #is redirected to user dashboard
    end
  end
end
