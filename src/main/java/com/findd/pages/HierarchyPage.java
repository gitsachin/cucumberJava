package com.findd.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class HierarchyPage {
	WebDriver driver;
	public HierarchyPage(WebDriver driver)
	{
		this.driver=driver;
	}
	
	public void clickOn_LeftMenu(String menu)
	{		
		String xPath="//*[@role='menu']//a[ contains(@href,'"+menu+"')]";
		driver.findElement(By.xpath(xPath)).click();
	}

}
