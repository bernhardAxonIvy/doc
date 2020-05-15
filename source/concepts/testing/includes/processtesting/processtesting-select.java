@Test
void select(BpmClient bpmClient)
{
  /* Selecting processes */
  BpmProcess byName =         BpmProcess.name("invoice");
  BpmProcess byNameSelector = BpmProcess.name().startsWith("invo");
  BpmProcess byId =           BpmProcess.id("1720E35BB7789886");
  BpmProcess byPath =         BpmProcess.path("crm/Processes/invoice");
  
  /* Selecting process elements */
  BpmElement byEleName =         INVOICE_PROCESS.elementName("write invoice");
  BpmElement byEleNameSelector = INVOICE_PROCESS.element().name().contains("write");
  BpmElement byEleFieldId =      INVOICE_PROCESS.element().fieldId("f2");
  BpmElement byEleType =         INVOICE_PROCESS.element().type().task().name("write");
}