Scenario: Open Trello
Given I am on the main application page
Then the page title is equal to 'Trello'

Scenario: Dismiss cookies
When the condition '#{eval("<class>"=="gdpr-cookie-consent-banner")}' is true I do
|step																									|
|When I click on element located `By.xpath(//button[@class='gdpr-cookie-consent-button'])`					|
|Then element located 'By.xpath(//div[@class='gdpr-cookie-consent-banner'])' disappears in '5' 	|

Scenario: User Sign in with registered account
When I log in as registered user

Scenario: Verify user is logged in
When account is verified

Scenario: Check info pop-up dismission
When I click on element located `By.xpath(//button[@data-test-id="header-info-button"])`
When the condition '#{eval("<class>"=="_3G5bqBqxC88MwF js-react-root")}' is true I do
|step																									|
|When I click on element located `By.xpath(//button[@data-test-id='popover-close'])`					|
|Then element located 'By.xpath(//section[@class='_3G5bqBqxC88MwF js-react-root'])' disappears in '5' 	|

Scenario: Check user menu
When I find >= '1' elements by By.xpath(//button[@data-test-id='header-member-menu-button']) and for each element do
|step																										|
|When I click on element located `By.xpath(//button[@data-test-id='header-member-menu-button'])`			|
|When I change context to element located `By.xpath(//section[@data-test-id='header-member-menu-popover'])`	|
|When I compare against baseline with `member_menu`															|




