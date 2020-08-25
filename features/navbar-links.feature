Feature:navbar-links

    Scenario Outline: validate navbar links
        Given I go to the jobs page
        When user clicks the "<linkName>" button
        Then the "<pageTitle>" is displayed

        Examples:
            | linkName          | pageTitle                                                   |
            | Home              | Jobs.Economist.com \| jobs \| Choose from 28 live vacancies |
            | Find a job        | Browse jobs \| Jobs.Economist.com                           |
            | Job alerts        | New Job By Email \| Jobs.Economist.com                      |
            | Search recruiters | Recruiters on Jobs.Economist.com                            |
            | Jobs blog         | Articles and careers information on Jobs.Economist.com      |