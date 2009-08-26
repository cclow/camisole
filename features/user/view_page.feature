Feature: User can view page
  In order to let users see the contents on the site
  A user
  Want to view content page

  Scenario: User view page
    Given there is a "Site" record
    And there is a "Page" record
    When I go to the page url
    Then I should see the page title
    And I should see the page body
