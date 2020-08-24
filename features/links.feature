Feature: links

  Scenario: links for job list  are functional
  Given I go to the jobs page
  When the user clicks on a sector
  Then the sector shows a list of jobs from only that sector. 

  Scenario: links for job sector listing are functional
  Given a user is on a jobs sector page
  When a user clicks on a job listing
  Then the job details are presented
  And an apply button is present


 
 
  
  Scenario Outline: validate footer links 
  Given I go to the jobs page
  When user clicks the "<linkName>" button
  Then the "<pageTitle>" is displayed

  Examples:
    | linkName | pageTitle |
    |    About Us | The Economist jobs board \| About Us  |
    |Contact Us|Jobs.Economist.com \| Contact Us|
    |Terms & Conditions | Jobs.Economist.com \| Terms & Conditions |
    | Privacy Policy | Jobs.Economist.com \| Privacy Policy   |
    |Advertise with us | Jobs.Economist.com \| Recruiter Services   |
    
         

             