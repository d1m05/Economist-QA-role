# The Economist - QA Engineer

##intro 
A suite of E2E acceptance  tests running against the Economist jobs site to test functionality

##Tool/libraries used
- npm
- cucumber-js <https://cucumber.io/docs/installation/javascript/>
- selenium <https://www.selenium.dev/documentation/en/>
- chai assertions <https://www.chaijs.com/api/assert/>

##Running

To run the suite of tests first install dependencies with `npm install`
Then run `npm test`

This will fire up a chromedriver instance and begin running the full suite of feature files.
Once complete, a html test report will be output to the report folder. Which can be viewed in a web-browser