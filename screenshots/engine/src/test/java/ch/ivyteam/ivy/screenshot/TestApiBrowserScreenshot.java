package ch.ivyteam.ivy.screenshot;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;
import static com.codeborne.selenide.Selenide.open;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;

import com.axonivy.ivy.webtest.IvyWebTest;
import com.axonivy.ivy.webtest.engine.EngineUrl;
import com.codeborne.selenide.Configuration;
import com.codeborne.selenide.Selenide;
import com.codeborne.selenide.WebDriverRunner;

@IvyWebTest
public class TestApiBrowserScreenshot
{
  private static final int BROWSER_WIDTH = 700;

  @BeforeAll
  static void setup()
  {
    open();
    resizeBrowser(new Dimension(BROWSER_WIDTH, 900));
  }
  
  @BeforeEach
  void beforeEach()
  {
    Configuration.reportsFolder = "target/screenshots/concepts-integration";
    Configuration.savePageSource = false;
    Configuration.timeout = 10000;
  }
  
  @Test
  void deploy()
  {
    open(apiBrowser());
    $(By.id("operations-engine-deploy")).click();
    takeScreenshot("api-browse-engine", 500);
  }

  private static String apiBrowser()
  {
    return EngineUrl.create().app("system").toUrl()+"/api-browser";
  }
  
  @Test
  void app()
  {
    open(apiBrowser()+"/index.html?urls.primaryName="+TestEngineScreenshots.DEMO_PORTAL);
    $$(".swagger-ui section.models h4 span").find(text("Schemas")).shouldBe(visible);
    takeScreenshot("api-browse-app", 500);
  }
  
  public static void takeScreenshot(String fileName, int height)
  {
    Dimension oldSize = WebDriverRunner.getWebDriver().manage().window().getSize();
    resizeBrowser(new Dimension(BROWSER_WIDTH, height));
    Selenide.executeJavaScript("scroll(0,0);");
    Selenide.screenshot(fileName);
    resizeBrowser(oldSize);
  }
  
  private static void resizeBrowser(Dimension size)
  {
    WebDriverRunner.getWebDriver().manage().window().setSize(size);
  }
}
