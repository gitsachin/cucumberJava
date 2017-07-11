package com.findd.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.findd.drivers.ReusableMethods;

public class LoginPage {

	String verifyLoginPageXpath="//h2[.='Grandd Central Login']";
	String userEmailXpath="//input[contains(@id,'useremail')]";
	String userPasswordXpath="//input[contains(@id,'userpassword')]";
	String LoginButtonXpath="//button[@type='button']";
	WebDriver driver;

	
	public LoginPage(WebDriver driver)
	{
		this.driver=driver;
	}
	
	public boolean verify_loginPage()
	{
		boolean result=false;
		if (driver.findElement(By.xpath(verifyLoginPageXpath)) != null)
		  result=true;
		return result;
	}
	
	public void setUserEMail(String email)
	{
		driver.findElement(By.xpath(userEmailXpath)).clear();
		driver.findElement(By.xpath(userEmailXpath)).sendKeys(email);
	}
	
	public void setUserPassword(String password)
	{
		driver.findElement(By.xpath(userPasswordXpath)).clear();
		driver.findElement(By.xpath(userPasswordXpath)).sendKeys(password);
	}
	
	public void clickLoginButton()
	{
		driver.findElement(By.xpath(LoginButtonXpath)).click();		
	}
	
	public boolean verify_loginError(String error)
	{
		String fullXpath=".//div[contains(.,'"+error+"')]";
		ReusableMethods.wait(this.driver,fullXpath,5);
		boolean result=false;
		if (driver.findElement(By.xpath(fullXpath)) != null)
		  result=true;
		return result;
	}	
}
