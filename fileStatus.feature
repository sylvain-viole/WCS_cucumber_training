Feature: User File status

    This feature describes how file status is handled

    Scenario: User file creation
    Given User 
    When user submit file 
    Then the file should be created with received