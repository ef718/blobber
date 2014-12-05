Feature: See messages

  Scenario: See another user's messages
    Given there is a user
    And the user has posted the message "hello world"
    When I visit the page for the user
    Then I should see "hello world"
