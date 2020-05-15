import org.junit.jupiter.api.Test;

import ch.ivyteam.ivy.bpm.engine.client.BpmClient;
import ch.ivyteam.ivy.bpm.engine.client.element.BpmElement;
import ch.ivyteam.ivy.bpm.engine.client.element.BpmProcess;
import ch.ivyteam.ivy.bpm.exec.client.IvyProcessTest;

@IvyProcessTest
public class TestInvoiceProcess
{
  private static final BpmProcess INVOICE_PROCESS = BpmProcess.name("invoice");

  private static final BpmElement WRITE_INVOICE_START = INVOICE_PROCESS.elementName("writeInvoice.ivp");
  
  @Test
  void writeInvoice(BpmClient bpmClient)
  {
    
  }
}
