Feature: Columns Validation


@Employee_001 @Group_01
Scenario: Employee - Columns Validation
	Given URL in the browser
	Then Login page should displayed
	When I Enter Automation UserId in the User Email
	And I Enter Automation Password in the User Password
	And I click on Login Button
	Then Home page should displayed
    When I click on Employee Menu in Homepage
	Then Employee page should displayed
	Then I verify column "First Name~Last Name~Default Level~External ID~Clock PIN"
	
Scenario: Timecards - Columns Validation
	When I click on Timecards Menu in Homepage	
	Then Timecards page should displayed
	Then I verify column "Employee~Total Hours~Regular Hours~Overtime Hours~Missing Punches~Approved~Exported"
	
Scenario: Records - Columns Validation
	When I click on Records Menu in Homepage
	Then Records page should displayed successfully
	Then I verify column "Image~Map~Employee~Location~Biometric Score~Exception~Date~Time"
	
Scenario: Employee Device - Columns Validation	
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click on search button
	When I Enter the "sathish" in the search box
	When I wait for 5 seconds
	When I click the first employee
	When I click on Device Tab in employee
	Then I verify columns "Name~Registration Code~Activation Date~Activation Time" with classname "DeviceTable"
	
Scenario: Employee Records - Columns Validation	
	When I click on Employee Menu in Homepage
	Then Employee page should displayed
	When I click the first employee
	When I click on Records Tab in employee
	Then I verify columns "Image~Map~Location~Biometric Score~Exception~Date~Time" with classname "RecordTable"
	
Scenario: Account Users Page - Columns Validation	
    When I click on setting option
	And I click on Account
	Then Account page should displayed
	When I click on "Users" left menu in the Account Page
	Then I verify column "Name~All~Account Admin~View Full Hierarchy~Edit Hierarchy~Approve Timecard~Edit Timecard~Edit Exceptions~Employee Edit~Employee Devices~Hierarchy Devices"

Scenario: Account Position Page - Columns Validation	
    When I click on setting option
    And I click on Account
	Then Account page should displayed
	When I click on "Positions" left menu in the Account Page
	Then I verify column "Name~Cost Center~Description~Required Tasks~Optional Tasks"
	
Scenario: Close all the open browser
	Given Close all the open browser
	