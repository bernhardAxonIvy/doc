@Test
public void globalVariables(AppFixure fixure)
{
  //check the value of a global variable
  assertThat(Ivy.var().getVariableNames()).contains("variable");
  assertThat(Ivy.var().get("variable")).isEqualTo("Hi");
  
  //change an global variable for this test
  fixure.var("variable", "Hello");
  assertThat(Ivy.var().get("variable")).isEqualTo("Hello");
}
