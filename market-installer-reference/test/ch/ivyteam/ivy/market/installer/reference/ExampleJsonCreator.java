package ch.ivyteam.ivy.market.installer.reference;

import com.fasterxml.jackson.module.jsonSchema.JsonSchema;
import com.fasterxml.jackson.module.jsonSchema.types.ObjectSchema;

public class ExampleJsonCreator
{
  public static String create(ObjectSchema schema)
  {
    var text = new StringBuilder();
    text.append("{");
    example(schema, text, 0);
    return text.toString();
  }

  private static void example(ObjectSchema schema, StringBuilder builder, int deep)
  {
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
          writeValue(builder, name, value, deep + 1);
          break;

        case OBJECT:
          var sche = value.asObjectSchema();
          if (sche != null)
          {
            builder.append("\n");
            builder.append("<span title=\""+value.getDescription()+"\">");
            write(builder, "\""+name+"\": {", deep + 1);
            builder.append("</span>");
            example(sche, builder, deep +1);
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
          var innerSchema = items.asSingleItems().getSchema();
          if (innerSchema.isObjectSchema())
          {
            var innerObjectSchema = innerSchema.asObjectSchema();
            builder.append("\n");

            builder.append("<span title=\""+value.getDescription()+"\">");
            write(builder, "\""+name+"\": [ {", deep + 1);
            builder.append("</span>");
            example(innerObjectSchema, builder, deep + 1);
            builder.append(" ],");
          }
          else
          {
            writeValue(builder, name, value, deep + 1);
          }
          break;

        case ANY:
        case NULL:
          throw new RuntimeException("null");
      }
    }
    builder.append("\n");
    findLastCommanAndRemove(builder);
    write(builder, "}", deep);
  }

  private static void findLastCommanAndRemove(StringBuilder builder)
  {
    var val = builder.toString();
    var lastIndexOfComma = val.lastIndexOf(",");
    var lastIndexOfQutoe = val.lastIndexOf("\"");
    if (lastIndexOfComma > lastIndexOfQutoe)
    {
      builder.replace(lastIndexOfComma, lastIndexOfComma + 1, "");
    }
  }

  private static void writeValue(StringBuilder builder, String name, JsonSchema value, int deep)
  {
    builder.append("\n");

    builder.append("<span title=\""+value.getDescription()+"\">");
    write(builder, "\""+name+"\": ", deep);
    builder.append("</span>");

    switch (value.getType())
    {
      case BOOLEAN:
        builder.append("false");
        break;
      case STRING:
        builder.append("\"string\"");
        break;
      case INTEGER:
        builder.append("0");
        break;
      case ARRAY:
        builder.append("[\"string\"]");
        break;
      default:
        throw new RuntimeException("invalid " + name + " " + value.getType());
    }
    builder.append(",");
  }

  private static void write(StringBuilder builder, String value, int deep)
  {
    builder.append(" ".repeat(deep * 2));
    builder.append(value);
  }
}
