package com.findd.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.findd.drivers.ReusableMethods;

public class Dashboard {

	String verifyHomePageXpath="//h1[.='Activity Today']";
	String employeeMenuXpath="//a[contains(@href,'employees')]";
	String timecardsMenuXpath="//a[contains(@href,'timecards')]";
	String settingXpath="//i[contains(@class,'fa-gear')]";
	String logoutXpath="//div[.='Logout']";
	String accountXpath="//a[contains(@href,'account')]";
	String profileXpath="//div[.='Profile']";
	String hierarchySettingXpath="//div[@class='hierarchy-nav-item']//i";
	String hierarchyMenuXpath="//a[contains(@href,'details')]";
	String recordsMenuXpath="//a[contains(@href,'records')]";
	String dashboardXpath="//a[contains(@href,'dashboard')]";
	WebDriver driver;
	
	public Dashboard(WebDriver driver)
	{
		this.driver=driver;
	}
	public boolean verify_Homepage()
	{
		boolean result=false;

		ReusableMethods.wait(this.driver,verifyHomePageXpath,20);
		if (driver.findElement(By.xpath(verifyHomePageXpath)) != null)
		  result=true;
		return result;
	}
	
	public void clickOnEmployeeMenu()
	{
		ReusableMethods.waitByClickable(this.driver,employeeMenuXpath,20);
		driver.findElement(By.xpath(employeeMenuXpath)).click();	
	}
	
	public void clickOnTimecardsMenu()
	{
		ReusableMethods.waitByClickable(this.driver,timecardsMenuXpath,20);
		driver.findElement(By.xpath(timecardsMenuXpath)).click();	
	}	
	
	public void clickOnRecordsMenu()
	{
		ReusableMethods.waitByClickable(this.driver,recordsMenuXpath,20);
		driver.findElement(By.xpath(recordsMenuXpath)).click();	
	}	


	public void clickOn_HierarchySetting() throws InterruptedException
	{
		Thread.sleep(8000);
		driver.findElement(By.xpath(hierarchySettingXpath)).click();	
	}


	public void clickOnSetting() throws InterruptedException
	{
		Thread.sleep(8000);
		driver.findElement(By.xpath(settingXpath)).click();	
	}

	public void clickOnLogout() throws InterruptedException
	{
		Thread.sleep(5000);
		driver.findElement(By.xpath(logoutXpath)).click();	
	}
	
	public void clickOnAccount() throws InterruptedException
	{
		Thread.sleep(5000);
		driver.findElement(By.xpath(accountXpath)).click();	
	}
	public void clickOnProfile() throws InterruptedException
	{
		Thread.sleep(5000);
		driver.findElement(By.xpath(profileXpath)).click();	
	}
	public void clickOnDashboard() throws InterruptedException
	{
		Thread.sleep(5000);
		driver.findElement(By.xpath(dashboardXpath)).click();	
	}
	
	public void clickOn_HierarchyMenu() throws InterruptedException
	{
		Thread.sleep(8000);
		driver.findElement(By.xpath(hierarchyMenuXpath)).click();	
	}
}
