package ch.ivyteam.ivy.market.installer.reference;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.junit.jupiter.api.Test;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.module.jsonSchema.JsonSchemaGenerator;

import ch.ivyteam.ivy.market.installer.MarketProductInstaller;
import io.github.classgraph.ClassGraph;

class TestGenerateDoc {
  private static JsonSchemaGenerator SCHEMA_GENERATOR = new JsonSchemaGenerator(new ObjectMapper());

  @Test
  void generate() throws Exception {
    var marketInstallers = findInstallersOnClasspath();

    var installers = marketInstallers.stream()
            .map(this::toInstaller)
            .sorted(Comparator.comparing(Installer::getName))
            .collect(Collectors.toList());

    HtmlWriter.generate(installers);
  }

  private List<String> findInstallersOnClasspath() {
    var graph = new ClassGraph().enableAllInfo();
    try (var result = graph.scan()) {
      return result.getClassesImplementing(MarketProductInstaller.class.getName()).getNames();
    }
  }

  public Installer toInstaller(String name) {
    try {
      var clazz = TestGenerateDoc.class.getClassLoader().loadClass(name);
      var instance = (MarketProductInstaller) clazz.getDeclaredConstructor().newInstance();
      var schema = SCHEMA_GENERATOR.generateSchema(instance.payload());

      var example = ExampleJsonCreator.create(schema.asObjectSchema());
      var description = DescriptionCreator.create(schema.asObjectSchema());
      return new Installer(instance.id(), instance.description(), example, description);
    } catch (Exception ex) {
      throw new RuntimeException(ex);
    }
  }
}
