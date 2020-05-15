@Test
void as(BpmClient bpmClient, @Named("ldv") IUser user, ISession session)
{
  /* Execution with the role everybody */
  ExecutionResult result = bpmClient.start()
          .process(WRITE_INVOICE_START)
          .as().everybody()
          .execute();
  
  /* Execution with a specific user */
  result = bpmClient.start()
          .process(WRITE_INVOICE_START)
          .as().user(user)
          .execute();
  
  /* Execution by selecting a specific role */
  result = bpmClient.start()
          .process(WRITE_INVOICE_START)
          .as().role("Everybody")
          .execute();

  /* Execution with a specific session */
  result = bpmClient.start()
          .process(WRITE_INVOICE_START)
          .as().session(session)
          .execute();
}