package com.findd.drivers;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;


import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.remote.CapabilityType;
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
	static WebDriver driver;
	static String downloadPath;
	public void openURL(String url)
	{
		downloadPath = System.getProperty("user.dir") + "\\temp";
        System.out.println("Download Path:" +downloadPath);
		String browserType=ReadPropFile.getValue("Browser");
		String OSType=ReadPropFile.getValue("OS");
		
		if(driver!=null)
			driver.quit();
				
		
		if(OSType.equalsIgnoreCase("local")){
			if(browserType.equalsIgnoreCase("Firefox"))
			{
				System.setProperty("webdriver.gecko.driver", "resources\\geckodriver_win64.exe");
				FirefoxProfile profile = new FirefoxProfile();			 
				profile.setPreference("browser.download.folderList", 2);
				profile.setPreference("browser.download.manager.showWhenStarting", false);
				profile.setPreference("browser.download.dir", downloadPath);
				profile.setPreference("browser.helperApps.neverAsk.openFile",
						"text/csv,application/x-msexcel,application/excel,application/x-excel,application/vnd.ms-excel,image/png,image/jpeg,text/html,text/plain,application/msword,application/xml");
				profile.setPreference("browser.helperApps.neverAsk.saveToDisk",
		"text/csv,application/x-msexcel,application/excel,application/x-excel,application/vnd.ms-excel,image/png,image/jpeg,text/html,text/plain,application/msword,application/xml");
				profile.setPreference("browser.helperApps.alwaysAsk.force", false);
				profile.setPreference("browser.download.manager.alertOnEXEOpen", false);
				profile.setPreference("browser.download.manager.focusWhenStarting", false);
				profile.setPreference("browser.download.manager.useWindow", false);
				profile.setPreference("browser.download.manager.showAlertOnComplete", false);
				profile.setPreference("browser.download.manager.closeWhenDone", false);
				driver = new FirefoxDriver(profile);
			}
			else if(browserType.equalsIgnoreCase("Chrome"))
			{
				System.setProperty("webdriver.chrome.driver", "resources\\chromedriver_win1.exe");			
				HashMap<String, Object> chromePrefs = new HashMap<String, Object>();
				chromePrefs.put("profile.default_content_settings.popups", 0);
				chromePrefs.put("download.default_directory", downloadPath);
				ChromeOptions options = new ChromeOptions();
				options.setExperimentalOption("prefs", chromePrefs);
				DesiredCapabilities cap = DesiredCapabilities.chrome();
				cap.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
				cap.setCapability(ChromeOptions.CAPABILITY, options);			
				driver = new ChromeDriver(cap);
			}
			else if(browserType.equalsIgnoreCase("IE"))
			{
				System.setProperty("webdriver.ie.driver", "resources\\IEDriverServer_Win32_3.5.0.exe");
				DesiredCapabilities capabilities = DesiredCapabilities.internetExplorer();
				 capabilities.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true);
				  driver = new InternetExplorerDriver(capabilities); 
				//driver = new InternetExplorerDriver();
			}
		}
		else if(OSType.equalsIgnoreCase("browserstack"))
		{
			username = System.getenv("BROWSERSTACK_USERNAME");
			accessKey = System.getenv("BROWSERSTACK_ACCESS_KEY");
			browserstackLocal = System.getenv("BROWSERSTACK_LOCAL");
			browserstackLocalIdentifier = System.getenv("BROWSERSTACK_LOCAL_IDENTIFIER");
			DesiredCapabilities capabilities = new DesiredCapabilities();
			capabilities.setCapability("os", "windows");
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
		//driver.manage().timeouts().pageLoadTimeout(60, TimeUnit.SECONDS);
		//driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		driver.get(url);
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
	
	public static void navigateToURL(WebDriver driver,String url) {
		driver.get(url);
	}
}
