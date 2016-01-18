using System;
using System.Reflection;

namespace _01.ASP.NET_Single_Page_application__SPA_.Areas.HelpPage.ModelDescriptions
{
    public interface IModelDocumentationProvider
    {
        string GetDocumentation(MemberInfo member);

        string GetDocumentation(Type type);
    }
}