const {Given, Then, When} = require('cucumber');
const World = require('../support/world');
const {By, until} = require('selenium-webdriver');
const chai = require('chai');
const assert = chai.assert;

When('the user clicks on a sector', async () => {
  const sectorLink = await World.driver.findElement(By.xpath('//a[contains(text(),\'Banking and finance\')]'));
  await sectorLink.click();
  await World.driver.wait(until.elementLocated(By.id('browsing')), 10000);
});

Then('a user is on a jobs sector page', async () => {
  await World.driver.get('https://jobs.economist.com/jobs/banking-and-finance/#browsing');
});

Then('the sector shows a list of jobs from only that sector.', async () => {
  const titleElement = await World.driver.findElement(By.id('browsing'));
  const titleText = await titleElement.getText();
  assert.equal(titleText, 'Banking and finance jobs');
});

When('a user clicks on a job listing', async () => {
  const firstJobListing = await World.driver.findElement(By.xpath('(//*[@id=\'listing\']//li[contains(@class,\'lister__item\')])[1]//a'));
  await firstJobListing.click();
  await World.driver.wait(until.elementLocated(By.xpath('//a[contains(text(),\'Apply\') and contains(@class,\'button\')]')), 10000);
});

Then('the job details are presented', async () => {
  return World.driver.findElement(By.xpath('//div[@class=\'block fix-text job-description\']'));
});

Then('an apply button is present', async () => {
  return World.driver.findElement(By.xpath('//a[contains(text(),\'Apply\') and contains(@class,\'button\')]'));
});

When('user clicks the {string} button', async (linkText) => {
  const linkButton = await World.driver.findElement(By.linkText(linkText));
  linkButton.click();
});

Then('the {string} is displayed', async (pageName) => {
  const title = await World.driver.getTitle();
  assert.equal(title, pageName);
});
