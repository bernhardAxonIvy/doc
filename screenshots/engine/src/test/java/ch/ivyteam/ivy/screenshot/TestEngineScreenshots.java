package ch.ivyteam.ivy.screenshot;

import static com.codeborne.selenide.CollectionCondition.itemWithText;
import static com.codeborne.selenide.CollectionCondition.size;
import static com.codeborne.selenide.CollectionCondition.texts;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;
import static com.codeborne.selenide.Selenide.open;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.Keys;

import com.axonivy.ivy.webtest.IvyWebTest;
import com.axonivy.ivy.webtest.engine.EngineUrl;
import com.axonivy.ivy.webtest.primeui.PrimeUi;
import com.codeborne.selenide.Condition;
import com.codeborne.selenide.Configuration;
import com.codeborne.selenide.Selenide;
import com.codeborne.selenide.WebDriverRunner;

@IvyWebTest
public class TestEngineScreenshots {

  private static final int BROWSER_WIDTH = 1200;
  public static final String DEMO_PORTAL = "demo-portal";

  @BeforeAll
  static void setup() {
    open();
    resizeBrowser(new Dimension(BROWSER_WIDTH, 900));
  }

  @BeforeEach
  void beforeEach() {
    Configuration.reportsFolder = "target/screenshots/engine-getting-started";
    Configuration.savePageSource = false;
    Configuration.timeout = 10000;
  }

  @Test
  void info() {
    open(EngineUrl.create().app("system").toUrl());
    Selenide.executeJavaScript("$('.ui-message-error').hide();");
    $$("h2").shouldHave(size(1), texts(DEMO_PORTAL));
    takeScreenshot("engine-mainpage", 700);
  }

  @Test
  void portal() {
    open(EngineUrl.create().app(DEMO_PORTAL).path("starts").toUrl());
    loginToPortal("demo");
    $(By.id("process-widget:image-process-container")).shouldBe(visible);
    takeScreenshot("engine-portal-starts", 700);
    open(EngineUrl.create().app(DEMO_PORTAL).process("/portal-user-examples/170321BD7F5539D6/start.ivp")
            .queryParam("embedInFrame", "true").toUrl());
    $(".task-title").shouldHave(Condition.text("Create leave request"));
    Selenide.switchTo().frame("iFrame");
    PrimeUi.selectOne(By.id("leave-request:leave-type")).selectItemByLabel("Annual Leave");
    $(By.id("leave-request:from_input")).shouldBe(visible).sendKeys("23/12/2023 16:00");
    //Hack to close strange datepicker
    $(By.id("leave-request:from_panel")).shouldBe(visible);
    $(By.id("leave-request:from_input")).sendKeys(Keys.ESCAPE);

    $(By.id("leave-request:to_input")).shouldBe(visible).sendKeys("03/01/2024 8:00");
    //Hack to close strange datepicker
    $(By.id("leave-request:to_panel")).shouldBe(visible);
    $(By.id("leave-request:to_input")).sendKeys(Keys.ESCAPE);

    PrimeUi.selectOne(By.id("leave-request:approver")).selectItemByLabel("Portal Guest User");
    $(By.id("leave-request:requester-comment")).shouldBe(visible).sendKeys("Christmas Holiday");
    takeScreenshot("engine-portal-form", 900);

    $(By.id("leave-request:button-submit")).should(visible).click();

    open(EngineUrl.create().app(DEMO_PORTAL).path("logout").toUrl());
    loginToPortal("guest");

    $(By.className("dashboard-tasks--table")).findAll("td.dashboard-tasks__name").shouldHave(
            itemWithText("Approval for leave request of Portal Demo User"));
    takeScreenshot("engine-portal-tasks", 600);
  }

  private void loginToPortal(String user) {
    $(By.id("login:login-form:username")).shouldBe(visible).sendKeys(user);
    $(By.id("login:login-form:password")).shouldBe(visible).sendKeys(user);
    $(By.id("login:login-form:login-command")).shouldBe(visible).click();
  }

  public void takeScreenshot(String fileName, int height) {
    Dimension oldSize = WebDriverRunner.getWebDriver().manage().window().getSize();
    resizeBrowser(new Dimension(BROWSER_WIDTH, height));
    Selenide.executeJavaScript("scroll(0,0);");
    Selenide.screenshot(fileName);
    resizeBrowser(oldSize);
  }

  private static void resizeBrowser(Dimension size) {
    WebDriverRunner.getWebDriver().manage().window().setSize(size);
  }
}
