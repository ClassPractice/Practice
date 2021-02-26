package pageObjects;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import core.Base;
import utilities.WebDriverUtility;

public class MyObj extends Base {

	// once we create MyObj we need to extends the base class to use parent class .
	// properties such as WebDriver driver. 
	// we create a constructor and inside the constructor we define the PageFactory.initElement
	// method to initialize the WebElements in this page. 
	
	
	public MyObj() {
		PageFactory.initElements(driver, this);
	}
	
	// we need to store UI WebElements in a private WebElement using @findBy Annotation of PageFactory Class. 
	// crowPath is to find element faster.
	
	
	@FindBy(xpath ="//input[@type = 'text']")
	private WebElement searchBar;  // searchBar is the name for the web Tek shcool.
	
	@FindBy(xpath ="//button[@class = 'btn btn-default btn-lg']")
	private WebElement searchButton;
	
	@FindBy(xpath = "//img[@title = 'iPhone']")
	private WebElement iphoneImage;
	
	// we need to create public methods to perform required actions on each elements
	// we stored.
	
	public void interValueToSearchBar(String value) {  // we can parametize it. 
		WebDriverUtility.enterValue(searchBar, value);
	}

	public void clicOnSearchButton() {
		WebDriverUtility.clickElementWithJS(searchButton);
	}
	
	
	public boolean imgIsDisplayed() {
		if (iphoneImage.isDisplayed()) 
			return true ;
			else
				return false;
		
		
	}
	
	
}
