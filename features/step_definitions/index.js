const {Given, Then} = require('cucumber');
const {By} = require('selenium-webdriver');
const World = require('../support/world');

Given(/^I go to the jobs page$/, () => World.goToJobsPage());

Then(/^I should see the navigation bar$/, async () => {
  return World.driver.findElement(By.id('primary-nav'));
});

Then('I should see the search fields', function() {
  return World.driver.findElement(By.id('keywords'));
});

Then('I should see the sector lists', function() {
  return World.driver.findElement(By.xpath('//span[contains(text(),\'Browse jobs by Sector\')]'));
});

Then('I should see the jobs blog', function() {
  return World.driver.findElement(By.xpath('//span[contains(text(),\'Jobs blog\')]'));
});

Then('I should see the featured jobs', function() {
  return World.driver.findElement(By.xpath('//span[contains(text(),\'Featured jobs\')]'));
});

Then('I should see the footer', function() {
  return World.driver.findElement(By.xpath('//footer[contains(@class,\'contentinfo\')]'));
});


