package com.findd.drivers;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

public class DriverManger {

	private static HashMap<Long, WebDriver> map=new HashMap<Long,WebDriver>();
	private static HashMap<Long, WebDriverWait> waitMap=new HashMap<Long,WebDriverWait>();
	String username; 
	String accessKey; 
	String browserstackLocal;
	String browserstackLocalIdentifier;
	WebDriver driver;
	
	public void openURL()
	{
		String browserType=ReadPropFile.getValue("Browser");
		if(browserType.equalsIgnoreCase("Firefox"))
		{
			System.setProperty("webdriver.gecko.driver", "resources\\geckodriver_win64.exe");
			driver = new FirefoxDriver();
		}
		else if(browserType.equalsIgnoreCase("Chrome"))
		{
			System.setProperty("webdriver.chrome.driver", "resources\\chromedriver_win.exe");
			driver = new ChromeDriver();
		}
		else if(browserType.equalsIgnoreCase("IE"))
		{
			System.setProperty("webdriver.ie.driver", "resources\\IEDriverServer_win64.exe");
			driver = new InternetExplorerDriver();
		}
		else if(browserType.equalsIgnoreCase("browserstack"))
		{
			username = System.getenv("BROWSERSTACK_USERNAME");
			accessKey = System.getenv("BROWSERSTACK_ACCESS_KEY");
			browserstackLocal = System.getenv("BROWSERSTACK_LOCAL");
			browserstackLocalIdentifier = System.getenv("BROWSERSTACK_LOCAL_IDENTIFIER");
			DesiredCapabilities capabilities = new DesiredCapabilities();
			capabilities.setCapability("os", "Windows");
			capabilities.setCapability("browser", "chrome");
			capabilities.setCapability("browserstack.local", browserstackLocal);
			capabilities.setCapability("browserstack.localIdentifier", browserstackLocalIdentifier);
			try {
				driver = new RemoteWebDriver(new URL("https://" + username + ":" + accessKey + "@hub.browserstack.com/wd/hub"), capabilities);
			} catch (MalformedURLException e) {
				e.printStackTrace();
			}
		}
		driver.manage().window().maximize();
		driver.get(ReadPropFile.getValue("URL"));
		map.put(Thread.currentThread().getId(), driver);
	}
	
	public static WebDriver getDriverInstance()
	{
		return map.get(Thread.currentThread().getId());
	}
	
	public static WebDriverWait getWait()
	{
		return waitMap.get(Thread.currentThread().getId());
	}
}
