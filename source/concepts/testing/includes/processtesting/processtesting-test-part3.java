private static final BpmElement CHECK_ORDER_START = INVOICE_PROCESS.elementName("checkOrder.ivp");

@Test
void checkOrder(BpmClient bpmClient)
{
  bpmClient.mock()
          .element(INVOICE_PROCESS.elementName("check order"))
          .with(Order.class, (in, out) -> out.setValid(Boolean.TRUE));
    
  ExecutionResult result = bpmClient
          .start()
          .process(CHECK_ORDER_START)
          .execute();
    
  ProcessData data = result.data();
  Order orderData = data.last();
  assertThat(orderData.getValid()).isTrue();
}
