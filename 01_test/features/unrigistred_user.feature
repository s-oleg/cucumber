Feature: Checking functionality
  In order Check Access to Information
  As an Unregistred user
  I want See some info

  @selenium
  Scenario: See some info
    Given I go to root path
    Then I should see 'Services'
    And must be present attribute '.left-col'
    And must be present attribute '.center-col'
    And I should see 'Best managers, Rate, Reviews'
    And must be present attribute '.right-col'
    When mouse hover on 'Send message to manager' with attribute '.top-menu_li_1'
    When I press link 'Search manager for help'
    Then I should be on 'Sign In' page
    And I should see 'Sign in'
    And I should see 'Sign in' button
    When I press button 'Sign in'
    Then I should see 'Wrong e-mail or password.'
    When mouse hover on 'Sites' with attribute '.top-menu_li_1'
    When I press link 'Articles'
    Then I should see 'Tegs:'
    And I should see 'The most popular'
    And I should see 'Section'
    When mouse hover on 'Work' with attribute '.top-menu_li_1'
    When I press link 'Place vacancy'
    Then I should be on 'Sign In' page
    When I press link 'Main page'
    Then I should be on the root path
    When mouse hover on 'Messages' with attribute '.top-menu_li_1'
    When I press link 'Past Article'
    Then I should be on 'Sign In' page
