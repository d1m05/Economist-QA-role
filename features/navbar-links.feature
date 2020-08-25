Feature:navbar-links


  Scenario Outline: validate navbar links
    Given I go to the jobs page
    When user clicks the "<linkName>" button
    Then the "<pageTitle>" is displayed

    Examples:
      | linkName          | pageTitle                                         |
      | Economist         | economist.com \|Economist                         |
      | Home              | jobs.economist.com \|Home                         |
      | Find a job        | jobs.economist.com/jobs/ \|Find a job             |
      | Job Alerts        | jobs.economist.com/newalert/ \|Job ALerts         |
      | Search recruiters | jobs.economist.com/employers/ \|Search recruiters |
      | Jobs blog         | jobs.economist.com/careers/   \|Jobs blog         |


