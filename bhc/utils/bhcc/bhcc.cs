using System;
using System.IO;
using System.Text;
using System.Xml;

internal class bhcc
{
    private static XmlElement ProcessFile(XmlDocument doc, string fileName)
    {
        var pre = doc.CreateElement("pre");

        var id = doc.CreateAttribute("id");
        id.Value = Path.GetFileNameWithoutExtension(fileName);
        pre.Attributes.Append(id);

        pre.InnerText = File.ReadAllText(fileName, Encoding.GetEncoding(866));

        return pre;
    }

    private static void Main(string[] args)
    {
        var files = args;

        var doc = new XmlDocument();

        var html = doc.CreateElement("html");
        var body = doc.CreateElement("body");

        doc.AppendChild(html);
        html.AppendChild(body);

        foreach (var file in files)
        {
            body.AppendChild(ProcessFile(doc, file));
        }

        doc.WriteTo(new XmlTextWriter(Console.Out));
    }
}
