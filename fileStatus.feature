Feature: User File status

    This feature describes how file status is handled

    Scenario: User file creation
        Given a user 
        When he submits a file 
        Then a file should be created with status received