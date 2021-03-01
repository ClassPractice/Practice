@RetailPage @CompleteTest
Feature: Retail Website Features  # HashTag will be used as backslash // to comment. 

#Every feature file starts with Feature: <Name of feature file>
#Every Scenario starts with Scenario: <Name of Test case we want to automate>
#Gherkin keywords are Given When Then 
#Given is precondition 
#When is an Action taken 
#Then is an expected result ( we write validation )
#And is repeating an action or can be used following Given keyword as well
#But is used for negative scenarios verification 

# background keyword we can move the first step of Scenario to background.
# and every Scenario and scenario outline will run first the background Keyword.
Background:	
       Given User is on Retail website 



@Test
Scenario: Search functionality Test case 
	When User search for 'iphone' 
	And User click on search button 
	Then User should see Iphone image 
#	And user click on search button
#	But user don't click 
 # in scenario outline we can run same scenario with multiple set of data 
 # we will use Examples keyword to pass different data. 
 
 
 
 
 
 
 
 
 # always will be written Scenario Outline. every Scenario outline follows with Example KeyWord.
 # under Example keyword we placed data inside the pipe || 
 # and we can separate columns with Pipes || in Examples each row represent one time of execution.
 
 @SmokeTest
 Scenario Outline: Test search functionality with multiple set of data
     
	When User search for '<ItemName>' 
	And User click on search button 
 
 
 
    Examples: 
   | ItemName| 
   |iphone|
   |Macbook|
   |Cannon|
 
    #| | this called Pipe
 
 # we have Feature, BackGround, Scenario, Scenario Outline, Examples keyword, Gherkin keywords such as Given, Then, When, and, But
 # these are the keyword happens in feature file. 
 
 
 
 # in cucumber we have data table. data table are mainly use to pass large amount of data. when we have step we need to pass mulitiple set of data. 
 
 # does we can store it in a list of list becuase tables will have a row and column we can alos store it as list of map key and value data will key and column will be as a map
 
 @RegressionTest @SmokeTest @RegisterTest
Scenario: Register an Account test case
		When User click  on MyAccount
		And User click on Register option
		And User fill the Registration form with Below information
		|firstName|lastName|email|telephone|password|confirmPassword|subscribe|
		|Alex|Sokolova|sakal@gmail.com|1012026633|test|test|no|
		And User accept the privacy and policy 
		And User click on Continue button
		Then User should be registered in Retail Website
		
   # Given user is on Retail Website
   # When user click on MyAccount
    
    
    
    
    
   
    
    
   
    # Scenario and step Defintion.
    
    
    
 
 
 
 
 