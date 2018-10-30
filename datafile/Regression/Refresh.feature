Feature: Refreshing the Page

@Refresh_001
Scenario: Refreshing Employee Page
	Given "Test" URL in the browser
	Then Login page should displayed
	When I Enter "autotester1@findd.io" in the User Email
	And I Enter "password" in the User Password
	And I click on Login Button
	Then Home page should displayed	
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I refresh the page
	Then Employee page should displayed
	
@Refresh_002
Scenario: Refreshing Timecards Page
    When I click on Timecards Menu in Homepage	
	Then Timecards page should displayed
	When I refresh the page
	Then Timecards page should displayed
	
@Refresh_003
Scenario: Refreshing Records Page
    When I click on Records Menu in Homepage
	Then Records page should displayed successfully
	When I refresh the page
	Then Records page should displayed successfully
	
@Refresh_004
Scenario: Refreshing Dashboard Page
    When I click on Dashboard
	Then Home page should displayed	
	When I refresh the page
	Then Home page should displayed	

	
@Refresh_005
Scenario: Refreshing Account - Billing Page
    When I click on setting option
    When I click on Account
	Then Account page should displayed
	When I refresh the page
	Then Account page should displayed
		
@Refresh_006
Scenario: Refreshing Employee Page
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click the first employee
	Then "Records" should displayed
	When I refresh the page
	Then "Records" should displayed
	
@Refresh_007
Scenario: Refreshing Account - User Page
    When I click on setting option
    When I click on Account
	Then Account page should displayed
	When I click on "Users" left menu in the Account Page
	Then "View Full Hierarchy" should displayed
	When I refresh the page
	Then "View Full Hierarchy" should displayed
	
@Refresh_008
Scenario: Refreshing Account - Hierarchy Page
	When I click on "Hierarchy" left menu in the Account Page
	Then "Hierarchy Level Definitions" should displayed
	When I refresh the page
	Then "Hierarchy Level Definitions" should displayed

@Refresh_009
Scenario: Refreshing Account - Positions Page
	When I click on "Positions" left menu in the Account Page
	Then "Required Tasks" should displayed
	When I refresh the page
	Then "Required Tasks" should displayed
	
@Refresh_010
Scenario: Refreshing Account - Settings Page
	When I click on "Settings" left menu in the Account Page
	Then "Mobile" should displayed
	When I refresh the page
	Then "Mobile" should displayed
	
@Refresh_011
Scenario: Refreshing Hierarchy - Details Page
	When I click on Hierarchy Menu
	Then "Details" should displayed
	When I refresh the page
	Then "Details" should displayed
	
@Refresh_012
Scenario: Refreshing Hierarchy - Users Page
	When I click on "users" left menu in the Hierarchy Page
	Then "Users" should displayed
	When I refresh the page
	Then "Users" should displayed
	
@Refresh_013
Scenario: Refreshing Hierarchy - Employees Page
	When I click on "employees" left menu in the Hierarchy Page
	Then "Employees" should displayed
	When I refresh the page
	Then "Employees" should displayed
	
@Refresh_014
Scenario: Refreshing Hierarchy - Positions Page
	When I click on "positions" left menu in the Hierarchy Page
	Then "Positions" should displayed
	When I refresh the page
	Then "Positions" should displayed
	
@Refresh_015
Scenario: Refreshing Hierarchy - Location Page
	When I click on "location" left menu in the Hierarchy Page
	Then "Location" should displayed
	When I refresh the page
	Then "Location" should displayed

@Refresh_016
Scenario: Refreshing Hierarchy - Records Page
	When I click on "records" left menu in the Hierarchy Page
	Then "Records" should displayed
	When I refresh the page
	Then "Records" should displayed
	
@Refresh_017
Scenario: Refreshing Hierarchy - Devices Page
	When I click on "devices" left menu in the Hierarchy Page
	Then "Devices" should displayed
	When I refresh the page
	Then "Devices" should displayed
	
@Refresh_018
Scenario: Refreshing Hierarchy - Settings Page
	When I click on "settings" left menu in the Hierarchy Page
	Then "Settings" should displayed
	When I refresh the page
	Then "Settings" should displayed
	
	
Scenario: Close all the open browser
	Given Close all the open browser
	