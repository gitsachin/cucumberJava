package com.findd.pages;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import static org.junit.Assert.assertTrue;
import com.findd.drivers.ReusableMethods;

public class Account {
WebDriver driver;
	
String verifyAccountPageXpath="//div[.='Billing Details']";
String addUserBtnXpath="//div[@class='account-users-tab']//button";
String addPositionXpath="//div[@class='positions-container']/div/button";
String addPositionBtnPopupXpath="//h3[.='Add New Position']/..//span[.='Add Position']/../..";
String verifyAddUserPopupXpath="//h3[.='ADD ACCOUNT USER']";
String verifyEditUserPopupXpath="//h3[.='EDIT ACCOUNT USER']";
String verifyProfilePopupXpath="//h3[.='PROFILE']";
String firstNameXpath="//input[contains(@id,'FirstName')]";
String LastNameXpath="//input[contains(@id,'LastName')]";
String EmailIDXpath="//input[contains(@id,'Email')]";
String passwordXpath="(//input[contains(@id,'Password')])[1]";
String confirmPasswordXpath="//input[contains(@id,'PasswordConfirm')]";
String addUserBtnPopupXpath="//button[.='ADD USER']";
String saveBtnPopupXpath="//span[.='SAVE']/../..";
String namePositionXpath="//input[contains(@id,'undefined-Name')]";
String nameLocationXpath="//input[contains(@id,'undefined-LocationName')]";
String costCenterPositionXpath="//input[contains(@id,'CostCenter')]";
String descriptionPositionXpath="//textarea[contains(@id,'Description')]";
String codeRTtxtXpath="//h4[.='Required Tasks']/following-sibling::div//label[.='Code']//following-sibling::*[@id='nameField']";
String saveBtn="//span[.='Save']/../..";
String nameRTtxtXpath="//h4[.='Required Tasks']/following-sibling::div//label[.='Name']//following-sibling::*[@id='nameField']";
String addRTbtnXpath="//h4[.='Required Tasks']/following-sibling::div/button";
String createRTbtnXpath="//h4[.='Required Tasks']/following-sibling::div/div//button";
String addHierarchyXpath="//div[@class='hierarchy-component']/div/button";
String codeOTtxtXpath="//h4[.='Optional Tasks']/following-sibling::div//label[.='Code']//following-sibling::*[@id='nameField']";
String nameOTtxtXpath="//h4[.='Optional Tasks']/following-sibling::div//label[.='Name']//following-sibling::*[@id='nameField']";
String addOTbtnXpath="//h4[.='Optional Tasks']/following-sibling::div/button";
String createOTbtnXpath="//h4[.='Optional Tasks']/following-sibling::div/div//button";
String addItemXpath="//div[.='ADD ITEM']/..";
String searchHierarchyBtnXpath="//div[@class='hierarchy-component']//i[@class='fa fa-search itemActionButton']";
String searchHierarchyTxtXpath="//div[@class='hierarchy-component']//input[contains(@id,'undefined-search')]";
String addPositionDetailsXpath="//h4[.='Positions']/following-sibling::div/button";
String Level2InputXpath="//h3[.='ADD HIERARCHY ITEM']/..//input";
public Account(WebDriver driver)
	{
		this.driver=driver;
	}

	public boolean verify_Accountpage()
	{
		boolean result=false;
		ReusableMethods.wait(this.driver,verifyAccountPageXpath,20);
		if (driver.findElement(By.xpath(verifyAccountPageXpath)) != null)
		  result=true;
		return result;
	}
	
	public boolean verify_notAccountpage()
	{
		boolean result=true;
	
		List<WebElement> elements=driver.findElements(By.xpath(verifyAccountPageXpath));
		if (elements.size()>0)
		  result=false;
		return result;
	}
	public void AddUserBtn()
	{
		driver.findElement(By.xpath(addUserBtnXpath)).click();
	}
	
	public void clickOn_AddPositionBtnPopup()
	{
		driver.findElement(By.xpath(addPositionBtnPopupXpath)).click();
	}
	
	public void clickOn_button(String button)
	{
		if(button.equalsIgnoreCase("Add Position"))
		{
			driver.findElement(By.xpath(addPositionXpath)).click();
		}
		else if(button.equalsIgnoreCase("Add Hierarchy"))
		{
			driver.findElement(By.xpath(addHierarchyXpath)).click();
		}
		else if(button.equalsIgnoreCase("Search Hierarchy")){
			driver.findElement(By.xpath(searchHierarchyBtnXpath)).click();		
		}
		else if(button.equalsIgnoreCase("Details")){
			driver.findElement(By.xpath(searchHierarchyBtnXpath)).click();		
		}
		else if(button.equalsIgnoreCase("Details view : Add Position")){
			driver.findElement(By.xpath(addPositionDetailsXpath)).click();	
		}
		else if(button.equalsIgnoreCase("Add Required Task")){
			driver.findElement(By.xpath(addRTbtnXpath)).click();
		}
		else if(button.equalsIgnoreCase("Create Required Task")){
			driver.findElement(By.xpath(createRTbtnXpath)).click();
		}
		else if(button.equalsIgnoreCase("Save")){
			driver.findElement(By.xpath(saveBtn)).click();
		}		
		else if(button.equalsIgnoreCase("Add Optional Task")){
			driver.findElement(By.xpath(addOTbtnXpath)).click();
		}
		else if(button.equalsIgnoreCase("Create Optional Task")){
			driver.findElement(By.xpath(createOTbtnXpath)).click();		
		}		
		else if(button.equalsIgnoreCase("Add Item")){
			driver.findElement(By.xpath(addItemXpath)).click();		
		}	
		else
			assertTrue("No match" , false);
		
	}

	
	public void clickOn_buttonByName(String button)
	{
		String fullXpath="//button[.='"+button+"']";
		driver.findElement(By.xpath(fullXpath)).click();
		
	}
	
	public void clickOn_ByNameValue(String button)
	{
		String fullXpath="//*[.='"+button+"']";
		driver.findElement(By.xpath(fullXpath)).click();
		
	}
	
	
	public String SetName(String value){
		value=ReusableMethods.generateUniqueName(value);
		System.out.println("Generate String : " + value);
		driver.findElement(By.xpath(namePositionXpath)).sendKeys(value);
		return value;
	}
	
	public String SetLocationName(String value) throws InterruptedException{
		Thread.sleep(2000);
		value=ReusableMethods.generateUniqueName(value);
		System.out.println("Generate String : " + value);
		driver.findElement(By.xpath(nameLocationXpath)).sendKeys(value);
		return value;
	}
	
	public void setField(String value,String field) throws InterruptedException{
		if(field.equalsIgnoreCase("Cost Center")){
			driver.findElement(By.xpath(costCenterPositionXpath)).clear();
			driver.findElement(By.xpath(costCenterPositionXpath)).sendKeys(value);
		}
		else if(field.equalsIgnoreCase("Description")){
			driver.findElement(By.xpath(descriptionPositionXpath)).sendKeys(value);		
		}
		else if(field.equalsIgnoreCase("Required Tasks - Code")){
			driver.findElement(By.xpath(codeRTtxtXpath)).sendKeys(value);		
		}		
		else if(field.equalsIgnoreCase("Required Tasks - Name")){
			driver.findElement(By.xpath(nameRTtxtXpath)).sendKeys(value);		
		}
	
		else if(field.equalsIgnoreCase("Optional Tasks - Code")){
			
			driver.findElement(By.xpath(codeOTtxtXpath)).sendKeys(value);		
		}		
		else if(field.equalsIgnoreCase("Optional Tasks - Name")){
			driver.findElement(By.xpath(nameOTtxtXpath)).sendKeys(value);		
		}
		else if(field.equalsIgnoreCase("Search Hierarchy")){
			driver.findElement(By.xpath(searchHierarchyTxtXpath)).sendKeys(value);		
		}
		else if(field.equalsIgnoreCase("Add Level")){
			driver.findElement(By.xpath(Level2InputXpath)).sendKeys(value);		
		}
		
		
		
	}
	
			
			
	public boolean verify_taskCreatedSuccessully(String task, String name) throws InterruptedException
	{
			boolean result=false;
			Thread.sleep(2000);
			String fullXpath="//h4[.='"+name+"']/following-sibling::div//span/span[contains(.,'"+task+"')]";
			ReusableMethods.wait(this.driver,fullXpath,30);
			if (driver.findElement(By.xpath(fullXpath)) != null)
			  result=true;
			return result;
	}

	public boolean verify_addAccountUserPopup() throws InterruptedException
	{
		boolean result=false;
		Thread.sleep(2000);
		ReusableMethods.wait(this.driver,verifyAddUserPopupXpath,30);
		if (driver.findElement(By.xpath(verifyAddUserPopupXpath)) != null)
		  result=true;
		return result;
	}
	

	public boolean verify_EditAccountUserPopup() throws InterruptedException
	{
		boolean result=false;
		Thread.sleep(2000);
		ReusableMethods.wait(this.driver,verifyEditUserPopupXpath,30);
		if (driver.findElement(By.xpath(verifyEditUserPopupXpath)) != null)
		  result=true;
		return result;
	}
		
	public boolean verify_ProfilePopup() throws InterruptedException
	{
		boolean result=false;
		Thread.sleep(2000);
		ReusableMethods.wait(this.driver,verifyProfilePopupXpath,30);
		if (driver.findElement(By.xpath(verifyProfilePopupXpath)) != null)
		  result=true;
		return result;
	}
	
	public String setFirstName(String firstName) throws InterruptedException
	{
		firstName=ReusableMethods.generateUniqueName(firstName);
		driver.findElement(By.xpath(firstNameXpath)).clear();
		driver.findElement(By.xpath(firstNameXpath)).sendKeys(firstName);
		return firstName;
		
	}
	
	public void setLastName(String lastName)
	{
		driver.findElement(By.xpath(LastNameXpath)).clear();
		driver.findElement(By.xpath(LastNameXpath)).sendKeys(lastName);
	}
	
	public String setEmailID(String emailID)
	{
		emailID=ReusableMethods.generateUniqueName(emailID)+"@findd.com";
		driver.findElement(By.xpath(EmailIDXpath)).clear();
		driver.findElement(By.xpath(EmailIDXpath)).sendKeys(emailID);
		return emailID;
	}
	

	public void setPassword(String password)
	{
		driver.findElement(By.xpath(passwordXpath)).clear();
		driver.findElement(By.xpath(passwordXpath)).sendKeys(password);
	}

	public void setConfirmPassword(String password)
	{
		driver.findElement(By.xpath(confirmPasswordXpath)).clear();
		driver.findElement(By.xpath(confirmPasswordXpath)).sendKeys(password);
	}
	
	public void AddUserPopuupBtn()
	{
		driver.findElement(By.xpath(addUserBtnPopupXpath)).click();
	}
	
	public boolean verify_UserCreated(String user)
	{
		boolean result=false;
		String fullXpath="//table/tbody//td/div[contains(.,'"+user+"')]";
		ReusableMethods.wait(this.driver,fullXpath,20);
		if (driver.findElement(By.xpath(fullXpath)) != null)
		  result=true;
		return result;
	}
	
	public void select_newCreatedUser(String username)
	{
		
		String fullXpath="(//table/tbody//td/div[contains(.,'"+username+"')])/../../td[1]";
		driver.findElement(By.xpath(fullXpath)).click();
	}
	
	public void clickOn_DeleteUserBtn()
	{		
		driver.findElement(By.xpath(deleteUserBtnXpath)).click();
	}
	String deleteUserBtnXpath="//span[.='Account User']/..//i[@class='fa fa-trash itemActionButton']";
	String deleteUserPopupXpath="//h3[.='DELETE USER']";
	String deleteUserBtnPopupXpath="//h3[.='DELETE USER']/../..//span[.='Delete']";
	public boolean verify_DeleteUserPopup()
	{
		boolean result=false;
		ReusableMethods.wait(this.driver,deleteUserPopupXpath,20);
		if (driver.findElement(By.xpath(deleteUserPopupXpath)) != null)
		  result=true;
		return result;
	}
	
	public void clickOn_DeleteUserBtnPopup()
	{		
		driver.findElement(By.xpath(deleteUserBtnPopupXpath)).click();
	}
	
	public boolean check_UserDeleted(String username) throws InterruptedException
	{
		boolean result=false;
		Thread.sleep(3000);
		String fullXpath="(//table/tbody//td/div[contains(.,'"+username+"')])/../../td[1]";
		List<WebElement> list =driver.findElements(By.xpath(fullXpath));
		if(list.size()==0)
			result=true;
		return result;
	}
	
	public void clickOn_Edit_NewUserCreated(String user)
	{
		String fullXpath="//table/tbody//td/div[contains(.,'"+user+"')]";
		ReusableMethods.wait(this.driver,fullXpath,20);
		driver.findElement(By.xpath(fullXpath)).click();
	}
	
	public void clickOn_save_Popup()
	{		
		driver.findElement(By.xpath(saveBtnPopupXpath)).click();
	}
	
	public void clickOn_Tab(String tab)
	{		
		driver.findElement(By.xpath("(//div[.='"+tab+"']/..)[1]")).click();
	}
	
	
	public void clickOn_newCreatedPosition(String position) throws InterruptedException{		
		String fullXpath="//td[2][.='"+position+"']";
		Thread.sleep(2000);
		driver.findElement(By.xpath(fullXpath)).click();
	}
	
	public boolean verify_PositionCreated(String position) throws InterruptedException
	{
		boolean result=false;
		Thread.sleep(3000);
		String fullXpath="//td[2][.='"+position+"']";
		if (driver.findElement(By.xpath(fullXpath)) != null)
			  result=true;
		return result;
	}
	
	public void clickOn_newCreatedLocation(String Location) throws InterruptedException{		
		String fullXpath="//td[.='"+Location+"']";
		Thread.sleep(2000);
		driver.findElement(By.xpath(fullXpath)).click();
	}
	
	public boolean verify_LocationCreated(String Location) throws InterruptedException
	{
		boolean result=false;
		Thread.sleep(5000);
		String fullXpath="//*[.='"+Location+"']";
		if (driver.findElement(By.xpath(fullXpath)) != null)
			  result=true;
		return result;
	}
	
	
	public boolean verify_PopupOpened(String Popup) throws InterruptedException
	{
		Thread.sleep(3000);
		boolean result=false;
		String fullXpath="//h3[.='"+Popup+"']";
		ReusableMethods.wait(this.driver,fullXpath,20);
		if (driver.findElement(By.xpath(fullXpath)) != null)
		  result=true;
		return result;
	}

	public boolean check_Exist(String data) throws InterruptedException
	{
		boolean result=false;
		String fullXpath="(//*[contains(.,'"+data+"')])[1]";
		ReusableMethods.wait(this.driver,fullXpath,20);
		if (driver.findElement(By.xpath(fullXpath)) != null)
			  result=true;
			return result;
	}
	
	public void clickOn_LeftMenu(String menu)
	{		
		String xPath="//*[@role='menu']//a[ contains(@href,'"+menu+"')]";
		driver.findElement(By.xpath(xPath)).click();
	}
}
