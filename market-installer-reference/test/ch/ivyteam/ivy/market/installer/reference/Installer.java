package ch.ivyteam.ivy.market.installer.reference;

import org.apache.commons.text.WordUtils;

public class Installer
{
  private final String id;
  private final String name;
  private final String description;
  private final String example;
  private final String properties;

  Installer(String id, String description, String example, String properties)
  {
    this.id = id;
    this.name = WordUtils.capitalize(id.replace("-", " ")) + " Installer";
    this.description = description;
    this.example = example;
    this.properties = properties;
  }

  public String getId()
  {
    return id;
  }

  public String getName()
  {
    return name;
  }

  public String getDescription()
  {
    return description;
  }

  public String getExample()
  {
    return example;
  }

  public String getProperties()
  {
    return properties;
  }
}