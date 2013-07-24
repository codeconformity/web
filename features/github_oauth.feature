Feature: GitHub OAuth
  In order to be able to use CodeConformity
  As a user
  I want to sign in with my GitHub account

  Scenario: signing up
    Given I do not have an account yet
     When I sign in with GitHub account
     Then I should be on the root page
      And I should see "John Doe"

  Scenario: signing in
    Given I am logged out
     When I sign in with GitHub account
     Then I should be on the root page
      And I should see "John Doe"
