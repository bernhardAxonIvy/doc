package ch.ivyteam.ivy.market.installer.reference;

import java.io.File;
import java.io.FileWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import freemarker.template.Configuration;
import freemarker.template.TemplateExceptionHandler;
import freemarker.template.Version;

public class HtmlWriter
{
  public static void generate(List<Installer> installers) throws Exception
  {
    var cfg = new Configuration(Configuration.VERSION_2_3_30);
    cfg.setClassForTemplateLoading(TestGenerateDoc.class, "");
    cfg.setIncompatibleImprovements(new Version(2, 3, 20));
    cfg.setDefaultEncoding("UTF-8");
    cfg.setLocale(Locale.US);
    cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);

    var input = new HashMap<String, Object>();
    input.put("installers", installers);

    var template = cfg.getTemplate("template.html");
    try (var fileWriter = new FileWriter(new File("html/index.html")))
    {
      template.process(input, fileWriter);
    }
  }
}
