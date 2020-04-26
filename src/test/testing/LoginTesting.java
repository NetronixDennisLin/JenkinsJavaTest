package test.testing;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class LoginTesting {

	private WebDriver driver;
	JavascriptExecutor js;
	
	@Before
	public void setUp() throws Exception {
		System.setProperty("webdriver.chrome.driver","C:\\Program Files (x86)\\Jenkins\\workspace\\Java\\WebContent\\chromedriver.exe");
	    driver = new ChromeDriver();
	    js = (JavascriptExecutor) driver;
	}

	@After
	public void tearDown() throws Exception {
	    driver.quit();
	}

	@Test
	public void test() {
	    driver.get("http://localhost:8080/LoginTest/");
	    driver.manage().window().setSize(new Dimension(1058, 666));
	    driver.findElement(By.name("name")).click();
	    driver.findElement(By.name("name")).sendKeys("Test");
	    driver.findElement(By.name("pwd")).click();
	    driver.findElement(By.name("pwd")).sendKeys("1234");
	    driver.findElement(By.name("login")).click();
	}
}
