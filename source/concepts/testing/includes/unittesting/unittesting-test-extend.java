@Test
public void cmsContent()
{
  //check if the content inside the cms has a specific value
  assertThat(Ivy.cms().co("/Test/content")).isEqualTo("Hello World");
  
  //check if the content inside the same cms has specified a value for German
  assertThat(Ivy.cms().coLocale("/Test/content", Locale.GERMAN)).isEqualTo("Hallo Welt");
  
  //change the language for this test session
  Ivy.session().setContentLocale(Locale.GERMAN);
  
  //check if the default content of the same cms is now in German
  assertThat(Ivy.cms().co("/Test/content")).isEqualTo("Hallo Welt");
}