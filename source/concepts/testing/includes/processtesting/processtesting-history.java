@Test
void history(BpmClient bpmClient)
{
  ExecutionResult result = bpmClient
          .start().process(WRITE_INVOICE_START)
          .execute();

  /* Assert that a specific element has been executed */
  assertThat(result.history().elements()).contains(WRITE_INVOICE_START);
  
  /* Assert that the elements with the given names have been executed */
  assertThat(result.history().elementNames()).contains("writeInvoice.ivp", "write invoice");
}