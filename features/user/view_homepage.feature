Feature: User can view homepage
  In order to have a landing homepage
  A user
  Want to view the homepage

  Scenario: User view homepage
    Given there is a "Site" record
    And there is a homepage
    When I go to the homepage
    Then I should see the page title
