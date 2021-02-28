Scenario: Open Trello
Given I am on the main application page
Then the page title is equal to 'Trello'

Scenario: Sign up
When I enter `<email>` in field located `By.xpath(//div[@class='d-none d-md-block col-md-7 pr-md-2']/input)`
When I click on element located `By.xpath(//div[@class='col-md-5 pl-md-2']/button)`
When I enter `<fullName>` in field located `By.xpath(//input[@id='displayName'])`
When I enter `<password>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//button[@id='signup-submit'])`
Examples:
|email								|fullName					|password								|teamName		|
|#{generate(Internet.emailAddress)}	|#{generate(Name.firstName)}|#{generate(regexify'[0-9]{8}')}		|SuicideSquad	|

Scenario: Enter teamName and purpose
When I enter `<teamName>` in field located `By.xpath(//input[@id='moonshotCreateTeam'])`
When I click on element located `By.xpath(//div[@data-test-id='moonshot-team-type-select'])`
When I click on element located `By.xpath(//div[text()='Education'])`
When I click on element located `By.xpath(//button[@data-test-id='moonshot-continue-button'])`

Scenario: Choose Free subscription
When I click on element located `By.xpath(//button[@data-test-id='moonshot-start-free-account'])`

Scenario: Finish account creation
When I click on element located `By.xpath(//button[@data-test-id='moonshot-success-button'])`

Scenario: Create Trello board using API
Given request body: {
"name": "FirstBoardSuicideSquad",
"token": "a2acb41cf47453b2da175914c099ac302e683c7ef835ac9386da92f93f53db28"}
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards?key=a7ab261b4c709493b7208068f79b4e16'
Then the response code is equal to '200'
Then the response body contains 'FirstBoardSuicideSquad'
