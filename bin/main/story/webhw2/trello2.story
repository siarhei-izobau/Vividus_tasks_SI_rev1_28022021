Meta:
Tier 1

GivenStories: story/webhw2/trello2.precondition.story 
Scenario: User Sign in with registered account

Scenario: visual check member menu
When I click on element located `By.xpath(//button[@data-test-id='header-member-menu-button'])`
When I change context to element located `By.xpath(//section[@data-test-id='header-member-menu-popover'])`
When I compare against baseline with `member_menu`

Scenario: visual check header
When I change context to element located `By.xpath(//div[@id='header'])`
When I compare against baseline with `header`

Scenario: visual check side menu
When I change context to element located `By.xpath(//nav[@class='home-left-sidebar-container'])`
When I compare against baseline with `side_menu`

Scenario: visual check members
When I change context to element located `By.xpath(//div[@id='trello-root'])`
When I click on element located `By.xpath(//a[@data-test-id='home-team-members-tab'])`
When I compare against baseline with `member_page` ignoring:
|ELEMENT						|AREA					|
|By.xpath(//div[@id='header'])	|By.cssSelector(#header)|

Scenario: visual check boards menu
When I click on element located `By.xpath(//button[@data-test-id='header-boards-menu-button'])`
When I change context to element located `By.xpath(//div[@data-test-id='header-boards-menu-popover'])`
When I compare against baseline with `boards_menu`