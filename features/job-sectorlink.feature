Feature:job-sectorlink

  Scenario: links for job list  are functional
  Given I go to the jobs page
  When the user clicks on a sector
  Then the sector shows a list of jobs from only that sector. 

  Scenario: links for job sector listing are functional
  Given a user is on a jobs sector page
  When a user clicks on a job listing
  Then the job details are presented
  And an apply button is present