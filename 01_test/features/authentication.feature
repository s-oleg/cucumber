Feature: Checking authentication
  In order Checking authentication
  As a new user and current user
  I want Registring, Log in, Update account, Log out

  @registration @javascript
  Scenario: Registration new user
    Given I go to 'Sign Up' path
    Then I should see 'Wellcome!'
    And I should see 'Registration'
    And must be present attribute '.new-user_outer'
    And must be present attribute '#type.new-user_step'
    And I should see 'Our services'
    And must be present attribute '#data.new-user_step'
    And I should see 'Set data:'
    And must be present attribute '#additional.new-user_step'
    And I should see 'Sey something about, Choose gender:'
    And I should see 'Sign Up' button
    Then I am a signing up
    Then I should be on the root path
    And I should see 'Wellcome! You have successfully registered.'

  @sign_out
  Scenario: Current user sign_out
    Given I am a signed in user
    When I press first link 'Sign Out'
    Then I should see 'You have Signed Out.'
    And I should be on the root path
    And I should see all text:
      | Manager's services |
      | Best managers       |
      | All Services        |
      | New Services        |
    
  @update_profile @javascript
  Scenario: Current user edit profile
    Given I am a signed in user
    When mouse hover on 'Profile' with attribute '.top-menu_li_1_a'
    Then I press link 'My Page'
    And I should be on the user's page
    And I should see 'Main info, Specialization, Services'
    And I should see 'Contact'
    And I should see 'Education, Personal Information, Company'
    And I should see 'Career, Reviews, Articles'
    When I press link_with_attr 'Edit' with '.user_main-info'
    And I should see 'I am at'
    Then I change data in form
    Then I should see 'Profile successfuly updated!'
    And data must be changed
