Feature: Admin can sign in
  In order to allows authenticated access to manage the site
  An admin
  Want to sign in

  Scenario: Admin sign in
    Given there is an "admin" record
    When I go to the admin sign in page
    And I fill in "email" with previous "email" from "admin"
    And I fill in "password" with previous "password" from "admin"
    And I press "sign in"
    Then I should see /sign in successful/
    And I should be on the admin root page
