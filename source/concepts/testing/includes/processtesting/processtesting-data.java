@Test
void data(BpmClient bpmClient)
{
  BpmElement writeInvoiceElement = INVOICE_PROCESS.elementName("write invoice");
  
  ExecutionResult result = bpmClient
          .start().process(WRITE_INVOICE_START)
          .execute();
  
  /* Process data at last executed element */
  Order dataAtLastExecutedElement              = result.data().last();
  
  /* Process data at elements last execution */
  Order dataAtElementsLastExecution            = result.data().lastOnElement(writeInvoiceElement);
  
  /* Process data for each execution of the element */
  List<Order> dataForEachExecutionOfTheElement = result.data().onElement(writeInvoiceElement);
}