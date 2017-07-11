package com.findd.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.findd.drivers.ReusableMethods;

public class Dashboard {

	String verifyHomePageXpath="//h1[.='Activity Today']";
	String employeeMenuXpath="//a[contains(@href,'employees')]";
	String settingXpath="//i[contains(@class,'fa-gear')]";
	String logoutXpath="//div[.='Logout']";
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
		driver.findElement(By.xpath(employeeMenuXpath)).click();	
	}
	
	public void clickOnSetting()
	{
		driver.findElement(By.xpath(settingXpath)).click();	
	}
	
	public void clickOnLogout()
	{
		driver.findElement(By.xpath(logoutXpath)).click();	
	}
}
