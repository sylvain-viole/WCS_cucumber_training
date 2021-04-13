Feature: User File status

    This feature describes how file status is handled

    Scenario: User file creation
        Given a user 
        When he submits a file 
        Then a file should be created with status received

    Scenario: File status pending
        Given a user file with received status 
        When "24 heures" has passed since user file creation
        Then it should change status to pending
    
     Scenario: File status supported
        Given a user file with status pending
        When user file is supported
        Then it should change status to supported

     Scenario Outline: File validation
        Given a user file with status supported
        When user file is "<validationState>"
        Then it should change status to "<status>"

       Examples:
            | validationState | status |
            | valid           | complete  |
            | invalid         | incomplete  |

    Scenario: File status complete action
        Given a user file
        When user file status is complete
        Then the client is notified that his file is complete
    
    Scenario: File status incomplete action
        Given a user file
        When user file status is incomplete
        Then the client is notified that his file is incomplete
