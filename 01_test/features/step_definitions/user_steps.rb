#################################### Sign In User
Given (/^I am a signed in user$/) do
  @user = FactoryGirl.create(:user)
  sign_in @user
end

def sign_in(user)
  visit '/users/sign_in' #new_user_session_path
  fill_in 'user_email', with: user.email
  fill_in 'user_password', with: 'password'
  click_button 'Sign in'
end

#################################### Sign Up User
Then (/^I am a signing up$/) do
  @user = FactoryGirl.build(:user)
  sign_up(@user)
end

def sign_up(user)
  choose 'radio_1'
  fill_in 'user_first_name', with: user.first_name
  fill_in 'user_last_name', with: user.last_name
  fill_in 'user_email', with: 'user@ruby.rb'
  fill_in 'user_password', with: user.password
  choose 'user_gender_1'
  click_button 'Sign Up'
end

#################################### Change user's data
Then(/^I change data in form$/) do
  choose 'user_is_available_false'
  fill_in 'user[hourly_rate]', with: '123'
  fill_in 'user[monthly_rate]', with: '321'
  find('#some_id').click_button 'Save'
end

#################################### Change updating user's data
Then(/^data must be changed$/) do
  user = User.first
  expect(user.hourly_rate).to eq(123)
  expect(user.monthly_rate).to eq(321)
  expect(user.is_available).to be_false
end
