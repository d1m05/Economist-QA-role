Feature:footer-links

 
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
    
         

             