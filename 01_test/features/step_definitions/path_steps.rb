### transition to root path
Given(/^I go to root path$/) do
  visit root_path
end

Given(/^I go to 'Sign Up' path$/) do
  visit new_user_registration_path
end

Then(/^I go to 'Sign In' path$/) do
  visit 'sign_in'
end

### Check current page
Then (/^I should be on the root path$/) do
  current_path.should == root_path
end

Then(/^I should be on the user\'s page$/) do
  user = User.first
  current_path.should == user_path(user)
end

Then(/^I should be on 'Sign In' page$/) do
  current_path.should == new_user_session_path
end
