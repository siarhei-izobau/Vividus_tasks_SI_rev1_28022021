Scenario: Open walmart.com
Given I am on a page with the URL 'https://www.walmart.com'
Then the page title contains the text 'Walmart.com'

Scenario: Create acc and sign in
When I click on an element by the xpath '//*[@id='hf-account-flyout']' 
When I click on an element by the xpath '//a[@title='Sign In']'
When I click on an element by the xpath '//*[@data-automation-id='signin-sign-up-btn']'
When I initialize the STORY variable `FirstName` with value `#{generate(Name.firstName)}`
When I initialize the STORY variable `LastName` with value `#{generate(Name.lastName)}`
When I initialize the STORY variable `Password` with value `#{generate(regexify'[a-z]{6}[A-Z]{1}[0-9]{1}')}`
When I enter `${FirstName}` in field located `By.xpath(//input[@id='first-name-su'])`
When I enter `${LastName}` in field located `By.xpath(//input[@id='last-name-su'])`
When I enter `${FirstName}@test-mail.ru` in field located `By.xpath(//input[@id='email-su'])`
When I enter `${Password}` in field located `By.xpath(//input[@id='password-su'])`
When I click on an element by the xpath '//div[2]/form[2]/button[1]'

Scenario: Search for product
When I enter `monopoly` in field located `By.xpath(//input[@placeholder='Search Walmart.com'])`
When I click on an element by the xpath '//button[@aria-label='Perform Search']'

Scenario: Add product to cart
When I click on an element by the xpath '//button[@data-offer-id='B76518E7E0CC4173A3F871DAE4515039']'

Scenario: Check cart
When I click on an element by the xpath '//*[@href='/cart']'
Then a link by By.linkUrl(https://www.walmart.com/ip/Monopoly-Game-Classic-Family-Board-Game-for-2-to-6-Players/55332132) exists
