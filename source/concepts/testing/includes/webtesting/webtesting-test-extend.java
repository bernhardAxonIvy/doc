@Test
public void registerNewCustomer()
{
  //You can use the EngineUrl utility to get to the info page of you engine:
  open(EngineUrl.base());
  
  //Search for the process start link and click it
  $(By.linkText("customer/register.ivp")).shouldBe(visible).click();
  
  //Fill in new customer
  $(By.id("form:firstname")).sendKeys("Unit");
  $(By.id("form:lastname")).sendKeys("Test");
  
  //Check that the submit button is enabled, before click it.
  $(By.id("form:submit")).shouldBe(enabled).click();
  
  //Check that the registration was successful.
  $(By.id("form:newCustomer")).shouldBe(visible, text("Unit Test"));
}