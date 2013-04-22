using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
namespace DialogFormExampleMVC2.MVCHelper
{
    public static class CustomHelper
    {
        public static MvcHtmlString DialogFormLink(this HtmlHelper htmlHelper, string linkText, string dialogControlUrl,
            string dialogTitle, string updateTargetId, string updateUrl) {
                TagBuilder builder = new TagBuilder("a");
                builder.SetInnerText(linkText);
                builder.Attributes.Add("href", dialogControlUrl);
                builder.Attributes.Add("data-dialog-title", dialogTitle);
                builder.Attributes.Add("data-update-target-id", updateTargetId);
                builder.Attributes.Add("data-update-url", updateUrl);
                
                builder.AddCssClass("dialogLink");
                return MvcHtmlString.Create(builder.ToString());

            
        }
    }
}
