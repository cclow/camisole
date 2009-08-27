Feature: Admin can sign out
  In order to guard the access to the site
  An admin
  Want to sign out

  Scenario: Admin sign out
    Given I am signed in as admin
    When I follow "sign out"
    Then I should see /sign out successful/
    And I should be on the admin sign in page
