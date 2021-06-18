package ch.ivyteam.ivy.market.installer.reference;

import com.fasterxml.jackson.module.jsonSchema.JsonSchema;
import com.fasterxml.jackson.module.jsonSchema.types.ObjectSchema;

public class DescriptionCreator
{
  public static String create(ObjectSchema schema)
  {
    var text = new StringBuilder();
    traverse(schema, text);
    return text.toString();
  }

  public static void traverse(ObjectSchema schema, StringBuilder builder)
  {
    builder.append("<ul>");

    var props = schema.getProperties();

    for (var entry : props.entrySet())
    {
      var name = entry.getKey();
      var value = entry.getValue();

      switch (value.getType())
      {
        case STRING:
        case BOOLEAN:
        case INTEGER:
        case NUMBER:
          enclose(builder, name, value);
          break;

        case OBJECT:
          var sche = value.asObjectSchema();
          if (sche != null)
          {
            enclose(builder, name, value);
            traverse(sche, builder);
          }
          else
          {
            // TODO snapshots are here ...
            // value.asSimpleTypeSchema()
            // throw new RuntimeException(value.get$schema());
          }
          break;

        case ARRAY:
          var items = value.asArraySchema().getItems();
          var innerObjectSchema = items.asSingleItems().getSchema().asObjectSchema();
          if (innerObjectSchema != null)
          {
            enclose(builder, name, value);
            traverse(innerObjectSchema, builder);
          }
          else
          {
            enclose(builder, name, value);
          }
          break;
        case ANY:
        case NULL:
          throw new RuntimeException("null");
      }
    }
    builder.append("</ul>");
  }

  private static void enclose(StringBuilder builder, String text, JsonSchema value)
  {
    builder.append("<li>");

    if (Boolean.TRUE.equals(value.getRequired()))
    {
      builder.append("<span title=\"required\">");
    }

    builder.append("<b>").append(text).append("</b>");

    if (Boolean.TRUE.equals(value.getRequired()))
    {
      builder.append(" *</a>");
    }

    var description = value.getDescription();
    if (description != null)
    {
      builder.append(" - ")
             .append(value.getDescription());
    }
    builder.append("</li>");
  }
}
