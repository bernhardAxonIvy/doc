@Test
public void globalVariablesInEnvironment(AppFixure fixure)
{
  //check the value of a global variable
  assertThat(Ivy.var().getVariableNames()).contains("variable");
  assertThat(Ivy.var().get("variable")).isEqualTo("Hi");
  
  //change the active environment for this test
  fixure.environment("test-env");
  assertThat(Ivy.var().get("variable")).isEqualTo("Ho");
}