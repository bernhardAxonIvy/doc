package ch.ivyteam.ivy.screenshot;

import static com.codeborne.selenide.CollectionCondition.size;
import static com.codeborne.selenide.CollectionCondition.texts;
import static com.codeborne.selenide.Condition.enabled;
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
import com.axonivy.ivy.webtest.primeui.PrimeUi;
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
  void portalExpress() {
    open(EngineUrl.create().path("starts").toUrl());
    loginToPortal("demo");
    $(By.id("process-widget:create-express-workflow")).waitUntil(visible, 60000);
    takeScreenshot("engine-portal-starts", 300);

    defineProcessProperties();
    defineProcessStep();
    defineSecondProcessStep();
    takeScreenshot("engine-portal-express", 900);
    $(By.id("form:save")).shouldBe(visible).click();
    $(".home-page-container").shouldBe(visible);

    open(EngineUrl.create().path("starts").toUrl());
    $(By.id("process-widget:process-view-mode:view-mode-selection:2")).parent().click(); // Select compact mode
    $$(".js-process-start-list-item > form > .process-item").find(text("Setup Axon Ivy Engine")).shouldBe(visible).click();
    $(By.id("form:user-task-dyna-form")).find("textarea").shouldBe(visible).sendKeys("Hi");
    $(By.id("form:ok-btn")).shouldBe(visible).click();

    open(EngineUrl.create().path("logout").toUrl());
    loginToPortal("guest");

    $(By.id("task-widget:task-list-scroller")).findAll("a.compact-task-start-link").shouldHave(texts("Hi"));
    removeWelcomeGuide();
    takeScreenshot("engine-portal-home", 500);
  }

  private void removeWelcomeGuide() {
    if ($(By.id("welcome-portal-guide-component:welcome-portal-guide")).is(visible)) {
      PrimeUi.selectBooleanCheckbox(By.id("welcome-portal-guide-component:dont-show-again-chbox")).setChecked();
      $(By.id("welcome-portal-guide-component:finish")).shouldBe(visible).click();
      $(By.id("welcome-portal-guide-component:welcome-portal-guide")).shouldNotBe(visible);
    }
  }

  private void loginToPortal(String user) {
    $(By.id("login:login-form:username")).shouldBe(visible).sendKeys(user);
    $(By.id("login:login-form:password")).shouldBe(visible).sendKeys(user);
    $(By.id("login:login-form:login-command")).shouldBe(visible).click();
  }

  private void defineProcessProperties() {
    $(By.id("process-widget:create-express-workflow")).click();
    $(By.id("form:process-name")).shouldBe(visible).sendKeys("Setup Axon Ivy Engine");
    $(By.id("form:process-description")).shouldBe(visible).sendKeys("Please setup a new Axon Ivy Engine on your prod server!");
    $(By.id("form:user-interface-type")).shouldBe(visible).click();
    $(By.id("delete-all-defined-tasks-warning-ok")).shouldBe(visible).click();
  }

  private void defineProcessStep() {
    $(By.id("form:defined-tasks-list:0:default-task-name")).shouldBe(visible).sendKeys("Hello world!");
    $(By.id("form:defined-tasks-list:0:default-task-responsible-link")).shouldBe(visible).click();
    defineGroupAssingeeForProcessStep();
    $(By.id("form:defined-tasks-list:0:default-task-responsible-link")).shouldHave(text("Everybody"));
  }

  private void defineSecondProcessStep() {
    $(By.id("form:defined-tasks-list:0:add-step-button")).shouldBe(visible).click();
    $(By.id("form:defined-tasks-list:1:default-task-name")).shouldBe(visible).sendKeys("Hi");
    $(By.id("form:defined-tasks-list:1:default-task-responsible-link")).shouldBe(visible).click();
    defineUserAssingeeForProcessStep();
    $(By.id("form:defined-tasks-list:1:default-task-responsible-link")).shouldHave(text("Portal Guest User"));
  }

  private void defineUserAssingeeForProcessStep() {
    $(By.id("assignee-selection-form:user-selection-component:user-selection_input")).shouldBe(visible).sendKeys("guest");
    $(By.id("assignee-selection-form:user-selection-component:user-selection_panel")).shouldBe(visible)
            .find("tr[data-item-label='Portal Guest User']").click();
    addAssignee("Portal Guest User");
  }

  private void defineGroupAssingeeForProcessStep() {
    PrimeUi.selectOneRadio(By.id("assignee-selection-form:assignee-type")).selectItemByValue("Group");
    $(By.id("assignee-selection-form:role-selection-component:role-selection_input")).shouldBe(visible).sendKeys("Everybody");
    $(By.id("assignee-selection-form:role-selection-component:role-selection_panel")).shouldBe(visible)
            .find("ul li[data-item-label='Everybody']").click();
    addAssignee("Everybody");
  }

  private void addAssignee(String expectedAssignee) {
    $(By.id("assignee-selection-form:add-assignee-button")).shouldBe(visible, enabled).click();
    $(By.id("assignee-selection-form:selected-assignee-fieldset")).shouldHave(text(expectedAssignee));
    $(By.id("assignee-selection-form:save-assignee-button")).shouldBe(visible).click();
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
