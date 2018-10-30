package com.findd.steps;

import static org.junit.Assert.assertTrue;


import org.openqa.selenium.WebDriver;
import com.findd.drivers.DriverManger;
import com.findd.pages.Account;

import cucumber.api.java.Before;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Account_steps {
WebDriver driver;
Account account;
static String recentlyCreatedEmail;
static String recentlyCreatedUser;
static String recentlyCreatedPosition;
static String recentlyCreatedLocation;

@Before
public void setup()
{
	this.driver=DriverManger.getDriverInstance();

}	

@Then("^Account page should displayed$")
public void Account_page_should_displayed() throws Throwable {
	this.driver=DriverManger.getDriverInstance();
	account= new Account(driver);
	assertTrue("Account Page is not loaded",account.verify_Accountpage());
}

@Then("^Account page should not displayed$")
public void account_page_shouldNot_displayed() throws Throwable {
	this.driver=DriverManger.getDriverInstance();
	account= new Account(driver);
	assertTrue("Account Page is loaded",account.verify_notAccountpage());
}

@When("^I click on Add User Button in the Account page$")
public void i_click_on_Download_Reports_in_the_Timecards_page() throws Throwable {
	account.AddUserBtn();
}

@When("^Add Account User popup should displayed$")
public void i_select_in_the_Timecards_page() throws Throwable {
	assertTrue("Mismatches in Timecards",account.verify_addAccountUserPopup());
}


@When("^I Enter \"(.*?)\" in the First Name field; in Add Account User popup$")
public void i_Enter_in_the_First_Name_field_in_Add_Employee_popup(String firstName) throws Throwable {
	recentlyCreatedUser=account.setFirstName(firstName);
}

@When("^I Enter \"(.*?)\" in the Last Name field; in Add Account User popup$")
public void i_Enter_in_the_Last_Name_field_in_Add_Employee_popup(String lastName) throws Throwable {
	account.setLastName(lastName);
}

@When("^I Enter \"(.*?)\" in the Email ID field; in Add Account User popup$")
public void i_Enter_in_the_Employee_ID_field_in_Add_Employee_popup(String emailID) throws Throwable {
	recentlyCreatedEmail=account.setEmailID(emailID);
}

@When("^I Enter \"(.*?)\" in the Password field; in Add Account User popup$")
public void i_Enter_in_the_password_field_in_Add_Employee_popup(String password) throws Throwable {
	account.setPassword(password);
}

@When("^I Enter \"(.*?)\" in the Password Confirmation field; in Add Account User popup$")
public void i_Enter_in_the_password_confirmation_field_in_Add_Employee_popup(String password) throws Throwable {
	account.setConfirmPassword(password);
}

@When("^I Enter \"(.*?)\" in the Password field; in Edit Account User popup$")
public void i_Enter_in_the_password_field_in_edit_Employee_popup(String password) throws Throwable {
	account.setPassword(password);
}

@When("^I Enter \"(.*?)\" in the Password Confirmation field; in Edit Account User popup$")
public void i_Enter_in_the_password_confirmation_field_in_edit_Employee_popup(String password) throws Throwable {
	account.setConfirmPassword(password);
}

@When("^I Enter \"(.*?)\" in the Password field; in Profile popup$")
public void i_Enter_in_the_password_field_in_Profile_popup(String password) throws Throwable {
	account.setPassword(password);
}

@When("^I Enter \"(.*?)\" in the Password Confirmation field; in Profile popup$")
public void i_Enter_in_the_password_confirmation_field_in_Profile_popup(String password) throws Throwable {
	account.setConfirmPassword(password);
}

@Then("^I click on Add Employee Button; in Add Account User popup$")
public void i_click_on_Add_Employee_Button_in_Add_Employee_popup() throws Throwable {
	account.AddUserPopuupBtn();
}	

@When("^I verify user is created successfully$")
public void verify_user_created_Successfully() throws Throwable {
	assertTrue("User is not Created",account.verify_UserCreated(recentlyCreatedUser));
}

@When("^I select the newly created Account User in Account Page$")
public void i_select_the_newly_created_Account_User_in_Account_Page() throws Throwable {
    account.select_newCreatedUser(recentlyCreatedUser);
}

@When("^I Click on delete button in Account Page$")
public void i_Click_on_delete_button_in_Account_Page() throws Throwable {
    account.clickOn_DeleteUserBtn();
}

@Then("^Delete User popup should displayed$")
public void delete_User_popup_should_displayed() throws Throwable {
	assertTrue("Delete User popup is not displayed",account.verify_DeleteUserPopup());
}

@When("^I click on delete button; in Delete User popup$")
public void i_click_on_delete_button_in_Delete_User_popup() throws Throwable {
    account.clickOn_DeleteUserBtnPopup();
}

@Then("^Account User should deleted in Account Pagee$")
public void user_should_deleted_in_Account_Pagee() throws Throwable {
	assertTrue("Account User is not deleted",account.check_UserDeleted(recentlyCreatedUser));    
}

@When("^I click on newly created user to edit in Account Page$")
public void i_click_on_newly_created_user_to_edit_in_Account_Page() throws Throwable {
	this.driver=DriverManger.getDriverInstance();
	account= new Account(driver);
	account.clickOn_Edit_NewUserCreated(recentlyCreatedUser);
}

@Then("^Edit User popup should displayed$")
public void edit_User_popup_should_displayed() throws Throwable {
	assertTrue("Account User is not displayed",account.verify_EditAccountUserPopup());
}

@When("^I click on Save button; in Edit User popup$")
public void i_click_on_Save_button_in_Edit_User_popup() throws Throwable {
    account.clickOn_save_Popup();
}

@Then("^Profile popup should displayed$")
public void Profile_popup_should_displayed() throws Throwable {
	this.driver=DriverManger.getDriverInstance();
	account= new Account(driver);
	assertTrue("Profile is not displayed",account.verify_ProfilePopup());
}


@When("^I click on Save button; in Profile popup$")
public void i_click_on_Save_button_in_Profile_popup() throws Throwable {
    account.clickOn_save_Popup();
}


@When("^I click on \"(.*?)\" tab in the Account Page$")
public void i_click_on_tab_in_the_Account_Page(String tab) throws Throwable {
	account.clickOn_Tab(tab);
}

@When("^I click on \"(.*?)\" Button in the Account Page$")
public void i_click_on_Add_Button_in_the_Account_Page(String button) throws Throwable {
	this.driver=DriverManger.getDriverInstance();
	account= new Account(driver);
	account.clickOn_button(button);
}

@When("^I Enter \"(.*?)\" in the \"(.*?)\" field; in \"(.*?)\" popup$")
public void i_Enter_in_the_field_in_Add_New_Position_popup(String value, String field,String popup) throws Throwable {
	account.setField(value, field);
}

@When("^I Enter \"(.*?)\" in the Name field; in \"(.*?)\" popup$")
public void i_Enter_in_the_field_in_Name_Add_New_Position_popup(String value, String popup) throws Throwable {
	recentlyCreatedPosition=account.SetName(value);
	System.out.println("recentlyCreatedPosition : " + recentlyCreatedPosition);	
}

@When("^I Enter \"(.*?)\" in the Location Name field; in \"(.*?)\" popup$")
public void i_Enter_in_the_field_in_Name_Add_New_Location_popup(String value, String popup) throws Throwable {
	recentlyCreatedLocation=account.SetLocationName(value);
	System.out.println("recentlyCreatedPosition : " + recentlyCreatedLocation);	
}
@When("^I click on Add Position button; in Add New Position popup$")
public void i_click_on_Add_Position_button_in_Add_New_Position_popup() throws Throwable {
	account.clickOn_AddPositionBtnPopup();
}

@Then("^New position should added successfully$")
public void new_position_should_added_successfully() throws Throwable {
	assertTrue("Position is not created",account.verify_PositionCreated(recentlyCreatedPosition));   
}

@When("^I click on the Newly added position in the Account Page$")
public void i_click_on_the_Newly_added_position_in_the_Account_Page() throws Throwable {
	this.driver=DriverManger.getDriverInstance();
	account= new Account(driver);
	account.clickOn_newCreatedPosition(recentlyCreatedPosition);
}

@Then("^New Location should added successfully$")
public void new_Location_should_added_successfully() throws Throwable {
	assertTrue("Position is not created",account.verify_LocationCreated(recentlyCreatedLocation));   
}

@When("^I click on the Newly added Location in the Account Page$")
public void i_click_on_the_Newly_added_Location_in_the_Account_Page() throws Throwable {
	this.driver=DriverManger.getDriverInstance();
	account= new Account(driver);
	account.clickOn_newCreatedLocation(recentlyCreatedLocation);
}

@Then("^\"(.*?)\" Popup should displayed$")
public void popup_should_displayed(String Popup) throws Throwable {
	assertTrue("Popup is not displayed",account.verify_PopupOpened(Popup));   
}

@When("^I click on \"(.*?)\" button; in \"(.*?)\" Popup$")
public void i_click_on_button_in_Popup(String button, String arg2) throws Throwable {
	account.clickOn_button(button);
}

@When("^I click on \"(.*?)\" in the Account Page$")
public void i_click_on_in_the_Account_Page(String button) throws Throwable {
  account.clickOn_ByNameValue(button);
}


@When("^I click on \"(.*?)\" button in the Account Page$")
public void i_click_on_button_in_accountPage(String button) throws Throwable {
	this.driver=DriverManger.getDriverInstance();
	account= new Account(driver);
	account.clickOn_buttonByName(button);
}

@Then("^I verify Task \"(.*?)\" is created successfully in \"(.*?)\"; in \"(.*?)\" Popup$")
public void i_verify_Task_is_created_successfully_in_in_Popup(String task, String name, String arg3) throws Throwable {
	assertTrue("Popup is not displayed",account.verify_taskCreatedSuccessully(task, name));

}

@When("^I Enter \"(.*?)\" in the \"(.*?)\" field$")
public void i_Enter_in_the_field(String value, String field) throws Throwable {
	account.setField(value, field);
}

@When("^I Enter Recently created Hierarchy Item in the \"(.*?)\" field$")
public void i_Enter_in_recentlyCreatedLocation_the_field(String field) throws Throwable {
	this.driver=DriverManger.getDriverInstance();
	account= new Account(driver);
	account.setField(recentlyCreatedLocation, field);
}

@Then("^I verify \"(.*?)\" is displayed in the result$")
public void i_verify_is_displayed_in_the_result(String data) throws Throwable {
	assertTrue("Popup is not displayed",account.check_Exist(data));
}

@Then("^I verify logged user as newly created user$")
public void i_verify_is_displayed_in_the_result() throws Throwable {
	assertTrue("Popup is not displayed",account.check_Exist(recentlyCreatedUser));
}

@When("^I click on \"(.*?)\" left menu in the Account Page$")
public void i_click_position_Left_in_the_Account_Page(String menu) throws Throwable {
	this.driver=DriverManger.getDriverInstance();
	account= new Account(driver);
	account.clickOn_LeftMenu(menu);
}
}